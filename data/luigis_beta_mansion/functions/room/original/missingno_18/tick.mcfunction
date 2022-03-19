execute unless score #missingno_18 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_18/load
execute as @a[gamemode=!spectator,x=737,y=10,z=53,dx=14,dy=8,dz=20] unless entity @s[scores={Room=34}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=737,y=10,z=53,dx=14,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 34
scoreboard players set #temp Room 34

execute as @a[gamemode=!spectator,scores={Room=34}] run function luigis_beta_mansion:room/original/missingno_18/tick_per_player

function #luigis_beta_mansion:room/original/missingno_18/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=34},limit=1] run function luigis_beta_mansion:room/original/missingno_18/ghosts

function luigis_beta_mansion:room/original/door/missingno_17_missingno_18
function luigis_beta_mansion:room/original/door/missingno_18_missingno_19

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_18.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=34},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_18{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_18.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time