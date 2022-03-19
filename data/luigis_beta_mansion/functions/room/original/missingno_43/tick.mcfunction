execute unless score #missingno_43 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_43/load
execute as @a[gamemode=!spectator,x=713,y=1,z=-22,dx=22,dy=8,dz=8] unless entity @s[scores={Room=59}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=713,y=1,z=-22,dx=22,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 59
scoreboard players set #temp Room 59

execute as @a[gamemode=!spectator,scores={Room=59}] run function luigis_beta_mansion:room/original/missingno_43/tick_per_player

function #luigis_beta_mansion:room/original/missingno_43/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=59},limit=1] run function luigis_beta_mansion:room/original/missingno_43/ghosts

function luigis_beta_mansion:room/original/door/missingno_42_missingno_43
function luigis_beta_mansion:room/original/door/missingno_43_missingno_53

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_43.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=59},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_43{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_43.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time