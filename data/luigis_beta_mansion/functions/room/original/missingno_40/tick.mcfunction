execute unless score #missingno_40 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_40/load
execute as @a[gamemode=!spectator,x=740,y=28,z=40,dx=19,dy=8,dz=8] unless entity @s[scores={Room=56}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=740,y=28,z=40,dx=19,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 56
scoreboard players set #temp Room 56

execute as @a[gamemode=!spectator,scores={Room=56}] run function luigis_beta_mansion:room/original/missingno_40/tick_per_player

function #luigis_beta_mansion:room/original/missingno_40/interactions/room

scoreboard players set #temp Room 56
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_40/ghosts
tag @a[tag=same_room] remove same_room

function luigis_beta_mansion:room/original/door/missingno_40_missingno_41
function luigis_beta_mansion:room/original/door/missingno_40_missingno_49

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_40.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=56},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_40{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_40.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time