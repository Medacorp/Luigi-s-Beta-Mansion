execute unless score #missingno_4 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_4/load
execute as @a[gamemode=!spectator,x=678,y=10,z=-55,dx=8,dy=17,dz=25] unless entity @s[scores={Room=20}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=678,y=10,z=-55,dx=8,dy=17,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 20
scoreboard players set #temp Room 20

execute as @a[gamemode=!spectator,scores={Room=20}] run function luigis_beta_mansion:room/original/missingno_4/tick_per_player

function #luigis_beta_mansion:room/original/missingno_4/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=20},limit=1] run function luigis_beta_mansion:room/original/missingno_4/ghosts

function luigis_beta_mansion:room/original/door/missingno_4_missingno_22

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_4.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=20},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_4{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_4.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time