#
# Description:	Display help in chat
# Called by:	as:tick
# Entity @s:	player
#
execute if score @s as_help matches 2 if data storage customizable_armor_stands:settings as_admin{book_help:"Enabled"} run function as:help/get_book
execute if score @s as_help matches 3 run function as:help/chat_actionbar_toggle
execute if score @s as_help matches 4 run function as:help/credits
execute if score @s as_help matches 1..3 unless score @s as_help matches 2 run function as:help/main
#
# Reset trigger score
#
scoreboard players set @s as_help 0
scoreboard players enable @s as_help
