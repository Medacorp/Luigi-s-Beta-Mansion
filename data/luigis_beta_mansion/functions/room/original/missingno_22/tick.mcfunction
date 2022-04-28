execute unless score #missingno_22 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_22/load
execute as @a[gamemode=!spectator,x=637,y=10,z=-62,dx=12,dy=8,dz=33] unless entity @s[scores={Room=38}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=637,y=10,z=-62,dx=12,dy=8,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 38
scoreboard players set #temp Room 38

execute as @a[gamemode=!spectator,scores={Room=38}] run function luigis_beta_mansion:room/original/missingno_22/tick_per_player

function #luigis_beta_mansion:room/original/missingno_22/interactions/room

scoreboard players set #temp Room 38
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_22/ghosts
tag @a[tag=same_room] remove same_room

function luigis_beta_mansion:room/original/door/missingno_4_missingno_22
function luigis_beta_mansion:room/original/door/missingno_22_missingno_23

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_22.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=38},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_22{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_22.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time