
TAG=0.1.0

package:
	vagrant package --base vaicex

publish:
	vagrant cloud publish wulffern/vaicex ${TAG} virtualbox package.box -d "Ubuntu 22.04 with ngspice,magic,xschem and netgen" --version-description "initial release" --release --short-description "open source analog eda"
