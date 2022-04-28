execute unless score #missingno_15 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_15/load
execute as @a[gamemode=!spectator,x=734,y=10,z=-39,dx=14,dy=8,dz=20] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=734,y=10,z=-39,dx=14,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 31
scoreboard players set #temp Room 31

execute as @a[gamemode=!spectator,scores={Room=31}] run function luigis_beta_mansion:room/original/missingno_15/tick_per_player

function #luigis_beta_mansion:room/original/missingno_15/interactions/room

scoreboard players set #temp Room 31
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_15/ghosts
tag @a[tag=same_room] remove same_room

function luigis_beta_mansion:room/original/door/hallway_3_missingno_15
function luigis_beta_mansion:room/original/door/missingno_15_missingno_16

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_15.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=31},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_15{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_15.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time