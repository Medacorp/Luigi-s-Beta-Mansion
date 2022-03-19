execute unless score #missingno_49 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_49/load
execute as @a[gamemode=!spectator,x=744,y=28,z=54,dx=22,dy=8,dz=25] unless entity @s[scores={Room=65}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=744,y=28,z=54,dx=22,dy=8,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 65
scoreboard players set #temp Room 65

execute as @a[gamemode=!spectator,scores={Room=65}] run function luigis_beta_mansion:room/original/missingno_49/tick_per_player

function #luigis_beta_mansion:room/original/missingno_49/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=65},limit=1] run function luigis_beta_mansion:room/original/missingno_49/ghosts

function luigis_beta_mansion:room/original/door/missingno_40_missingno_49
function luigis_beta_mansion:room/original/door/missingno_49_missingno_50

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_49.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=65},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_49{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_49.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time