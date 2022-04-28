execute unless score #kitchen Ticking matches 1 run function #luigis_beta_mansion:room/original/kitchen/load
execute as @a[gamemode=!spectator,x=697,y=10,z=61,dx=14,dy=8,dz=31] unless entity @s[scores={Room=15}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=697,y=10,z=61,dx=14,dy=8,dz=31] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 15
scoreboard players set #temp Room 15

execute as @a[gamemode=!spectator,scores={Room=15}] run function luigis_beta_mansion:room/original/kitchen/tick_per_player

function #luigis_beta_mansion:room/original/kitchen/interactions/room

scoreboard players set #temp Room 15
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/kitchen/ghosts
tag @a[tag=same_room] remove same_room

function luigis_beta_mansion:room/original/door/dining_room_kitchen
function luigis_beta_mansion:room/original/door/kitchen_back_yard
function luigis_beta_mansion:room/original/door/kitchen_missingno_17

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.kitchen.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=15},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.kitchen{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.kitchen.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time