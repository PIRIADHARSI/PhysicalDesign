#program to get co-ordinates of macros after placement
foreach_in_collection a [get_flat_cells -filter "is_hard_macro"] {
set co [get_attribute [get_flat_cells $a ] bbox_ll]
set macro_name [get_object_name $a]
puts "$macro_name $co"
} > ./outputs/reports/macro_name.txt
