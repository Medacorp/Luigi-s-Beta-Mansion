execute unless score #missingno_6 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_6/load
execute as @a[gamemode=!spectator,x=667,y=19,z=4,dx=11,dy=8,dz=8] unless entity @s[scores={Room=22}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=667,y=19,z=4,dx=11,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 22
scoreboard players set #temp Room 22

execute as @a[gamemode=!spectator,scores={Room=22}] run function luigis_beta_mansion:room/original/missingno_6/tick_per_player

function #luigis_beta_mansion:room/original/missingno_6/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=22},limit=1] run function luigis_beta_mansion:room/original/missingno_6/ghosts

function luigis_beta_mansion:room/original/door/missingno_6_missingno_27
function luigis_beta_mansion:room/original/door/missingno_6_missingno_28

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_6.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=22},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_6{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_6.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time