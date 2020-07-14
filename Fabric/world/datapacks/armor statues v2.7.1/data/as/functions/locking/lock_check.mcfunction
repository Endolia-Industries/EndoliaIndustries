#
# Description:	Checks if armor stand has old or new lock
# Called by:	as:trigger/trigger/lock
# Entity @s:	Player
#
execute if entity @s[tag=as_locked,tag=as_uuid_locked] run function as:locking/uuid_check
execute if entity @s[tag=as_locked,tag=!as_uuid_locked] run function as:locking/unlock