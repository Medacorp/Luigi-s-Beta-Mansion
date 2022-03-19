execute unless score #missingno_14 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_14/load
execute as @a[gamemode=!spectator,x=679,y=10,z=-88,dx=12,dy=8,dz=33] unless entity @s[scores={Room=30}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=679,y=10,z=-88,dx=12,dy=8,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 30
scoreboard players set #temp Room 30

execute as @a[gamemode=!spectator,scores={Room=30}] run function luigis_beta_mansion:room/original/missingno_14/tick_per_player

function #luigis_beta_mansion:room/original/missingno_14/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=30},limit=1] run function luigis_beta_mansion:room/original/missingno_14/ghosts

function luigis_beta_mansion:room/original/door/missingno_13_missingno_14

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_14.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=30},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_14{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_14.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time