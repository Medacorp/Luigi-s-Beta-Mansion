execute unless score #missingno_35 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_35/load
execute as @a[gamemode=!spectator,x=741,y=28,z=-17,dx=19,dy=8,dz=8] unless entity @s[scores={Room=51}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=741,y=28,z=-17,dx=19,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 51
scoreboard players set #temp Room 51

execute as @a[gamemode=!spectator,scores={Room=51}] run function luigis_beta_mansion:room/original/missingno_35/tick_per_player

function #luigis_beta_mansion:room/original/missingno_35/interactions/room

scoreboard players set #temp Room 51
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_35/ghosts
tag @a[tag=same_room] remove same_room

function luigis_beta_mansion:room/original/door/missingno_34_missingno_35
function luigis_beta_mansion:room/original/door/missingno_35_missingno_41

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_35.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=51},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_35{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_35.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time