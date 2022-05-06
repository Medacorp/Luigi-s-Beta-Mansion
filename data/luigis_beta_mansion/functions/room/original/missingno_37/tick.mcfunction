execute unless score #missingno_37 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_37/load
execute as @a[gamemode=!spectator,x=653,y=119,z=-42,dx=30,dy=24,dz=80] unless entity @s[scores={Room=53}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=653,y=119,z=-42,dx=30,dy=24,dz=80] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 53
scoreboard players set #temp Room 53

execute as @a[gamemode=!spectator,scores={Room=53}] run function luigis_beta_mansion:room/original/missingno_37/tick_per_player

function #luigis_beta_mansion:room/original/missingno_37/interactions/room

scoreboard players set #temp Room 53
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_37/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_37.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=53},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_37{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_37.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time