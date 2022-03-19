execute unless score #missingno_47 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_47/load
execute as @a[gamemode=!spectator,x=682,y=119,z=-10,dx=17,dy=8,dz=35] unless entity @s[scores={Room=63}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=682,y=119,z=-10,dx=17,dy=8,dz=35] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 63
scoreboard players set #temp Room 63

execute as @a[gamemode=!spectator,scores={Room=63}] run function luigis_beta_mansion:room/original/missingno_47/tick_per_player

function #luigis_beta_mansion:room/original/missingno_47/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=63},limit=1] run function luigis_beta_mansion:room/original/missingno_47/ghosts

function luigis_beta_mansion:room/original/door/missingno_36_missingno_47
function luigis_beta_mansion:room/original/door/missingno_39_missingno_47
function luigis_beta_mansion:room/original/door/missingno_41_missingno_47

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_47.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=63},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_47{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_47.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time