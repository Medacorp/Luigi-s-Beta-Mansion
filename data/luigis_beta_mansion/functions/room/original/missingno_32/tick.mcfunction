execute unless score #missingno_32 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_32/load
execute as @a[gamemode=!spectator,x=673,y=10,z=30,dx=15,dy=8,dz=16] unless entity @s[scores={Room=48}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=673,y=10,z=30,dx=15,dy=8,dz=16] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 48
scoreboard players set #temp Room 48

execute as @a[gamemode=!spectator,scores={Room=48}] run function luigis_beta_mansion:room/original/missingno_32/tick_per_player

function #luigis_beta_mansion:room/original/missingno_32/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=48},limit=1] run function luigis_beta_mansion:room/original/missingno_32/ghosts

function luigis_beta_mansion:room/original/door/dining_room_missingno_32
function luigis_beta_mansion:room/original/door/missingno_31_missingno_32

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_32.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=48},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_32{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_32.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time