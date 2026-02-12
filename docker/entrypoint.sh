#!/usr/bin/env bash
# Thanks ChatGPT 5.2. I, Carsten Wulff, did not write this file :-D
set -euo pipefail

APP_USER="${APP_USER:-aicex}"
APP_GROUP="${APP_GROUP:-aicex}"
PUID="${PUID:-}"
PGID="${PGID:-}"
TAKE_UID_FROM_DIR="${TAKE_UID_FROM_DIR:-/opt}"

# Infer UID/GID from mount if not provided
if [[ -z "${PUID}" || -z "${PGID}" ]] && [[ -e "${TAKE_UID_FROM_DIR}" ]]; then
  PUID="${PUID:-$(stat -c '%u' "${TAKE_UID_FROM_DIR}" || true)}"
  PGID="${PGID:-$(stat -c '%g' "${TAKE_UID_FROM_DIR}" || true)}"
fi

# Helper: run a command as root (via sudo if possible)
as_root() {
  if [[ "$(id -u)" == "0" ]]; then
    "$@"
  elif command -v sudo >/dev/null 2>&1; then
    # -n = non-interactive (fail instead of prompting)
    sudo -n "$@"
  else
    return 127
  fi
}

# If we can get root (sudo works), do the UID/GID alignment
if as_root true >/dev/null 2>&1; then
  if [[ -n "${PGID}" ]]; then
    if getent group "${APP_GROUP}" >/dev/null 2>&1; then
      cur_gid="$(getent group "${APP_GROUP}" | cut -d: -f3)"
      [[ "${cur_gid}" == "${PGID}" ]] || as_root groupmod -o -g "${PGID}" "${APP_GROUP}"
    else
      as_root groupadd -o -g "${PGID}" "${APP_GROUP}"
    fi
  fi

  if ! id -u "${APP_USER}" >/dev/null 2>&1; then
    as_root useradd -m -s /bin/bash -g "${APP_GROUP}" "${APP_USER}"
  fi

  if [[ -n "${PUID}" ]]; then
    cur_uid="$(id -u "${APP_USER}")"
    [[ "${cur_uid}" == "${PUID}" ]] || as_root usermod -o -u "${PUID}" "${APP_USER}"
  fi

  # Optional: make the mount writable (can be slow on huge trees)
  if [[ -e "${TAKE_UID_FROM_DIR}" ]]; then
    as_root chown -R "${APP_USER}:${APP_GROUP}" "${TAKE_UID_FROM_DIR}" 2>/dev/null || true
  fi
fi

# Now run the main process as APP_USER (no sudo).
if [[ "$(id -un)" != "${APP_USER}" ]]; then
  if command -v gosu >/dev/null 2>&1; then
    exec gosu "${APP_USER}:${APP_GROUP}" "$@"
  elif command -v su-exec >/dev/null 2>&1; then
    exec su-exec "${APP_USER}:${APP_GROUP}" "$@"
  else
    exec su -s /bin/bash -c "$(printf '%q ' "$@")" "${APP_USER}"
  fi
fi

if (( $# == 0 )); then
  echo "No command provided; Starting SSH"
  sudo service ssh restart && tail -f /dev/null
else
  exec "$@"
fi
