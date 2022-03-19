execute unless score #missingno_11 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_11/load
execute as @a[gamemode=!spectator,x=713,y=28,z=-42,dx=7,dy=8,dz=13] unless entity @s[scores={Room=27}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=713,y=28,z=-42,dx=7,dy=8,dz=13] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 27
scoreboard players set #temp Room 27

execute as @a[gamemode=!spectator,scores={Room=27}] run function luigis_beta_mansion:room/original/missingno_11/tick_per_player

function #luigis_beta_mansion:room/original/missingno_11/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=27},limit=1] run function luigis_beta_mansion:room/original/missingno_11/ghosts

function luigis_beta_mansion:room/original/door/missingno_11_missingno_34
function luigis_beta_mansion:room/original/door/missingno_11_missingno_56

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_11.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=27},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_11{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_11.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time