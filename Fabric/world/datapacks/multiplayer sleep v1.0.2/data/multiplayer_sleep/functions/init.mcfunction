scoreboard objectives add ms_count dummy "Multiplayer Sleep Count"
scoreboard objectives add ms_temp dummy "Multiplayer Sleep Temp"
scoreboard players set 100 ms_count 100
scoreboard players set 10000 ms_count 10000

# 1 percent by default
scoreboard players add requiredPercent ms_count 0
execute if score requiredPercent ms_count matches 0 run scoreboard players set requiredPercent ms_count 1

scoreboard objectives add ms_time dummy "Time of day"
scoreboard objectives add ms_warnToggle dummy "Toggle Warn"
scoreboard objectives add ms_warn trigger "Warn Sleeping Players"

scoreboard players enable @a ms_warn
scoreboard players set -1 ms_warnToggle -1
scoreboard players set #ms_warnToggle ms_warnToggle 1
