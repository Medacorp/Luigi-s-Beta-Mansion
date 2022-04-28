execute unless score #missingno_42 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_42/load
execute as @a[gamemode=!spectator,x=734,y=1,z=-63,dx=14,dy=8,dz=21] unless entity @s[scores={Room=58}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=734,y=1,z=-63,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 58
scoreboard players set #temp Room 58

execute as @a[gamemode=!spectator,scores={Room=58}] run function luigis_beta_mansion:room/original/missingno_42/tick_per_player

function #luigis_beta_mansion:room/original/missingno_42/interactions/room

scoreboard players set #temp Room 58
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_42/ghosts
tag @a[tag=same_room] remove same_room

function luigis_beta_mansion:room/original/door/missingno_12_missingno_42
function luigis_beta_mansion:room/original/door/missingno_42_missingno_43

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_42.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=58},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_42{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_42.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time