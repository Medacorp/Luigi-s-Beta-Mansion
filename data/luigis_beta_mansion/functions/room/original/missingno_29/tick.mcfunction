execute unless score #missingno_29 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_29/load
execute as @a[gamemode=!spectator,x=660,y=19,z=-93,dx=12,dy=8,dz=22] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=660,y=19,z=-93,dx=12,dy=8,dz=22] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 45
scoreboard players set #temp Room 45

execute as @a[gamemode=!spectator,scores={Room=45}] run function luigis_beta_mansion:room/original/missingno_29/tick_per_player

function #luigis_beta_mansion:room/original/missingno_29/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=45},limit=1] run function luigis_beta_mansion:room/original/missingno_29/ghosts

function luigis_beta_mansion:room/original/door/missingno_7_missingno_29
function luigis_beta_mansion:room/original/door/missingno_29_missingno_30

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_29.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=45},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_29{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_29.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time