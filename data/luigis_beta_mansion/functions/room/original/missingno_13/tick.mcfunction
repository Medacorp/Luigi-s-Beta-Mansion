execute unless score #missingno_13 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_13/load
execute as @a[gamemode=!spectator,x=695,y=10,z=-70,dx=17,dy=8,dz=33] unless entity @s[scores={Room=29}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=695,y=10,z=-70,dx=17,dy=8,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 29
scoreboard players set #temp Room 29

execute as @a[gamemode=!spectator,scores={Room=29}] run function luigis_beta_mansion:room/original/missingno_13/tick_per_player

function #luigis_beta_mansion:room/original/missingno_13/interactions/room

scoreboard players set #temp Room 29
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_13/ghosts
tag @a[tag=same_room] remove same_room

function luigis_beta_mansion:room/original/door/hallway_4_missingno_13
function luigis_beta_mansion:room/original/door/missingno_13_missingno_14

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_13.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=29},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_13{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_13.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time