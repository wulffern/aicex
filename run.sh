#!/usr/bin/env bash
set -euo pipefail

IMAGE="wulffern/aicex:26.04_latest"
NAME="aicex"

# --- Optional: preserve your original gating behavior ---
if [[ ! -d "../aicex" ]]; then
  echo "Note: ../aicex not found; skipping docker run (matches original script behavior)."
  exit 0
fi

# --- X11 detection / configuration ---
UNAME="$(uname -s 2>/dev/null || echo unknown)"
DOCKER_X_ARGS=()



# Helper: add xauth cookie if available (best effort)
XAUTH_MOUNT_ARGS=()
if [[ -n "${XAUTHORITY:-}" && -f "${XAUTHORITY:-}" ]]; then
  XAUTH_MOUNT_ARGS=(-v "${XAUTHORITY}:/tmp/.Xauthority:ro" -e XAUTHORITY=/tmp/.Xauthority)
fi

# 1) Linux native X11 via unix socket
if [[ "$UNAME" == "Linux" && -S /tmp/.X11-unix/X0 ]]; then
  # Default: pass DISPLAY through if set, otherwise we’ll compute it.
  DISPLAY_VALUE="${DISPLAY:-}"
  # Allow local root in container to talk to your X server (simple, not super strict)
  command -v xhost >/dev/null 2>&1 && xhost +local:docker >/dev/null 2>&1 || true

  DOCKER_X_ARGS+=(
    -e DISPLAY="${DISPLAY_VALUE:-:0}"
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw
  )
  # xauth if present
  DOCKER_X_ARGS+=("${XAUTH_MOUNT_ARGS[@]}")

# 2) WSLg (Windows Subsystem for Linux GUI) uses a different socket path
elif [[ -d /mnt/wslg && -S /mnt/wslg/.X11-unix/X0 ]]; then
  DOCKER_X_ARGS+=(
    -e DISPLAY="${DISPLAY_VALUE:-:0}"
    -v /mnt/wslg/.X11-unix:/tmp/.X11-unix:rw
  )

# 3) macOS / Windows (Docker Desktop): use TCP to host display server
else
  # Docker Desktop provides this magic hostname on macOS/Windows (and often in WSL2)
  HOST="host.docker.internal"
  # Common default display. For VcXsrv/Xming it’s usually :0.0
  DISPLAY_VALUE="${DISPLAY_VALUE:-$HOST:0}"
  xhost +localhost
  DOCKER_X_ARGS+=(
    -e DISPLAY="$DISPLAY_VALUE"
    # Some X clients need these; harmless otherwise
    -e LIBGL_ALWAYS_INDIRECT=1
  )

fi

# --- Run container ---
docker run --rm --name "$NAME" -it \
  -v "$(pwd):/home/aicex" \
  "${DOCKER_X_ARGS[@]}" \
  "$IMAGE" bash
