scoreboard players set @a ms_temp 0

scoreboard players set totalPlayers ms_count 0
execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s run scoreboard players add totalPlayers ms_count 1

scoreboard players set sleepingPlayers ms_count 0
execute as @a[scores={ms_count=99..}] at @s run scoreboard players add sleepingPlayers ms_count 1

# Times by 10K
scoreboard players operation totalPlayers ms_count *= 10000 ms_count
scoreboard players operation requiredPlayers ms_count = totalPlayers ms_count

scoreboard players operation requiredPercent ms_temp = requiredPercent ms_count
scoreboard players operation requiredPercent ms_temp *= 10000 ms_count

scoreboard players operation sleepingPlayers ms_temp *= 10000 ms_count

# Math
scoreboard players operation requiredPlayers ms_count *= requiredPercent ms_count
scoreboard players operation requiredPlayers ms_count /= 100 ms_count
scoreboard players operation requiredPlayers ms_count /= 10000 ms_count
scoreboard players operation requiredPlayers ms_count -= sleepingPlayers ms_count

scoreboard players operation @s ms_temp = requiredPlayers ms_count
