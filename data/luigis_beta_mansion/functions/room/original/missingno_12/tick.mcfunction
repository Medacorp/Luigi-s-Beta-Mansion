execute unless score #missingno_12 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_12/load
execute as @a[gamemode=!spectator,x=712,y=1,z=-63,dx=8,dy=17,dz=21] unless entity @s[scores={Room=28}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=712,y=1,z=-63,dx=8,dy=17,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 28
scoreboard players set #temp Room 28

execute as @a[gamemode=!spectator,scores={Room=28}] run function luigis_beta_mansion:room/original/missingno_12/tick_per_player

function #luigis_beta_mansion:room/original/missingno_12/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=28},limit=1] run function luigis_beta_mansion:room/original/missingno_12/ghosts

function luigis_beta_mansion:room/original/door/hallway_3_missingno_12
function luigis_beta_mansion:room/original/door/missingno_12_missingno_42

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_12.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=28},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_12{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_12.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time