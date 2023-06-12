# coordinate {0 198.955}
set x 100.8
set y 780.5

# get the pitch of M5 layer
set pi [get_attribute [get_layers M6] pitch]

# find spacing between ports
set sp [expr 6 * $pi]
set i 0
foreach_in_collection po [get_ports *clk*] {
            set xn [expr $y + ($i * $sp)]
            set co "$xn $y"
            set_individual_pin_constraints -port $po -allowed_layers M6 -location $co
            incr i
}

# report_individual_pin_constraints
place_pins -ports [get_ports *clk*]
