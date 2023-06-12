# coordinate {0 198.955}
set x 802.8
set y 198.956

# get the pitch of M5 layer
set pi [get_attribute [get_layers M5] pitch]

# find spacing between ports
set sp [expr 6 * $pi]
set i 0
foreach_in_collection po [all_outputs] {
            set yn [expr $y + ($i * $sp)]
            set co "$x $yn"
            set_individual_pin_constraints -port $po -allowed_layers M5 -location $co
            incr i
}

# report_individual_pin_constraints
place_pins -ports [all_outputs]
