execute unless score #missingno_23 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_23/load
execute as @a[gamemode=!spectator,x=644,y=101,z=-41,dx=10,dy=8,dz=79] unless entity @s[scores={Room=39}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=644,y=101,z=-41,dx=10,dy=8,dz=79] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 39
scoreboard players set #temp Room 39

execute as @a[gamemode=!spectator,scores={Room=39}] run function luigis_beta_mansion:room/original/missingno_23/tick_per_player

function #luigis_beta_mansion:room/original/missingno_23/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=39},limit=1] run function luigis_beta_mansion:room/original/missingno_23/ghosts

function luigis_beta_mansion:room/original/door/missingno_22_missingno_23

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_23.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=39},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_23{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_23.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time