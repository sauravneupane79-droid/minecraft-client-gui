# Disable all mods

tag @s remove fly_through_walls_enabled
tag @s remove creative_flight_enabled
tag @s remove speed_boost_enabled
tag @s remove night_vision_enabled
tag @s remove xray_enabled
tag @s remove instant_break_enabled

effect @s resistance 0
effect @s speed 0
effect @s night_vision 0
effect @s glowing 0
effect @s haste 0
ability @s mayfly false

message @s \"§c>> All Mods Disabled!\"
