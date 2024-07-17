

To run the thing:

This config has 3 sets of bars/sidebars to suport up to 3 concurrent monitors.

I will be replacing the number you are meant to put with $mon

[main bar] = bar$mon

[left panel] = sidebar$mon

[right notification panel] = notifications$mon




depending on what you want to achive and the layout of your monitors you many want to swap all these around.

This example if for this config:

_____________ _____________
|  primary  | |           |
| monitor 1 | | monitor 0 |
|___________| |___________|
     /^\           /^\

you would want
exec-once=eww daemon && eww open-many bar1 sidebar1 bar0 notifications0

but you could also have the notifications on the primary monitor.

exec-once=eww daemon && eww open-many bar1 sidebar1 bar0 notifications1
