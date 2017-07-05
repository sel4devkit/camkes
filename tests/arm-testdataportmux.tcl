#!/usr/bin/expect -f
# @TAG(DATA61_BSD)

source [file join [file dirname [info script]] procs.tcl]

set timeout 600

spawn make arm_testdataportmux_defconfig
check_exit

source [file join [file dirname [info script]] build.tcl]

source [file join [file dirname [info script]] run-arm.tcl]
wait_for "We're done, people"
