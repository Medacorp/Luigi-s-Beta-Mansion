execute unless score #missingno_8 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_8/load
execute as @a[gamemode=!spectator,x=697,y=19,z=-23,dx=15,dy=8,dz=8] unless entity @s[scores={Room=24}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=697,y=19,z=-23,dx=15,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 24
scoreboard players set #temp Room 24

execute as @a[gamemode=!spectator,scores={Room=24}] run function luigis_beta_mansion:room/original/missingno_8/tick_per_player

function #luigis_beta_mansion:room/original/missingno_8/interactions/room

scoreboard players set #temp Room 24
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_8/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_8.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=24},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_8{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_8.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time