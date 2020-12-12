PROG=	rospi-build-img
ROSPI=	0

all: doc

doc: doc/${PROG}.1 README

.SUFFIXES: .pod .1

doc/${PROG}.1: doc/${PROG}.pod
	pod2man -c "ROS-Pi documentation" -r "rospi v${ROSPI}" $< >$@

README: doc/${PROG}.pod
	pod2text $< >$@
