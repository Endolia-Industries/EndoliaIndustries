#
# Description:	turns empty item frames visible
# Called by:	as:as_second
# Entity @s:	invisible item frame
#
execute as @s run data merge entity @s {Invisible:0b}
execute as @s run tag @s remove if_invisible