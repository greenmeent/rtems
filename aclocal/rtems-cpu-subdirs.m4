AC_DEFUN([_RTEMS_CPU_SUBDIR],
[
$1 )	if test -d ${srcdir}/ifelse([$2],,[$1],[$2/$1]) ; then
  AC_CONFIG_SUBDIRS(ifelse([$2],,[$1],[$2/$1]))
  fi
])

## RTEMS_CPU_SUBDIRS([PREFIX])
AC_DEFUN([RTEMS_CPU_SUBDIRS],
[
## EDIT: If adding a new cpu to RTEMS, add it to the case block below.
case $RTEMS_CPU in
_RTEMS_CPU_SUBDIR([a29k],[$1]);;
_RTEMS_CPU_SUBDIR([arm],[$1]);;
_RTEMS_CPU_SUBDIR([c4x],[$1]);;
_RTEMS_CPU_SUBDIR([h8300],[$1]);;
_RTEMS_CPU_SUBDIR([hppa1.1],[$1]);;
_RTEMS_CPU_SUBDIR([i386],[$1]);;
_RTEMS_CPU_SUBDIR([i960],[$1]);;
_RTEMS_CPU_SUBDIR([m68k],[$1]);;
_RTEMS_CPU_SUBDIR([mips],[$1]);;
_RTEMS_CPU_SUBDIR([mips64orion],[$1]);;
_RTEMS_CPU_SUBDIR([no_cpu],[$1]);;
_RTEMS_CPU_SUBDIR([or32],[$1]);;
_RTEMS_CPU_SUBDIR([powerpc],[$1]);;
_RTEMS_CPU_SUBDIR([sh],[$1]);;
_RTEMS_CPU_SUBDIR([sparc],[$1]);;
_RTEMS_CPU_SUBDIR([unix],[$1]);;
*) AC_MSG_ERROR([Invalid RTEMS_CPU <[$]{RTEMS_CPU}>])
esac
])
