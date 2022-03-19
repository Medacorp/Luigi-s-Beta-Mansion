execute unless score #hallway_2 Ticking matches 1 run function #luigis_beta_mansion:room/original/hallway_2/load
execute as @a[gamemode=!spectator,x=722,y=19,z=42,dx=8,dy=8,dz=38] unless entity @s[scores={Room=4}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=722,y=19,z=42,dx=8,dy=8,dz=38] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 4
scoreboard players set #temp Room 4
tag @e[tag=ghost,scores={Room=4}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=4}] run function luigis_beta_mansion:room/original/hallway_2/tick_per_player

function #luigis_beta_mansion:room/original/hallway_2/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=4},limit=1] run function luigis_beta_mansion:room/original/hallway_2/ghosts

function luigis_beta_mansion:room/original/door/hallway_1_hallway_2
function luigis_beta_mansion:room/original/door/hallway_2_study
function luigis_beta_mansion:room/original/door/hallway_2_bed_room_1
function luigis_beta_mansion:room/original/door/hallway_2_childs_room
function luigis_beta_mansion:room/original/door/hallway_2_missingno_33

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.hallway_2.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=4},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.hallway_2.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time