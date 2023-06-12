set i 0
set fh_read [open /home/vlsiguru/PHYSICAL_DESIGN/TRAINER1/ICC2/ORCA_TOP/ref/ORCA_TOP_design_data/ORCA_TOP.v]
set fh_write [open ./outputs/netlist_copy.v w]
while {[gets $fh_read line] >=0} {
	if {[regexp -nocase {SRAMP2RW [0-9*]+} $line temp]} {
		puts $temp
		incr i
	}
}
puts $i
