execute unless score #study Ticking matches 1 run function #luigis_beta_mansion:room/original/study/load
execute as @a[gamemode=!spectator,x=700,y=19,z=42,dx=17,dy=8,dz=21] unless entity @s[scores={Room=5}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=700,y=19,z=42,dx=17,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 5
scoreboard players set #temp Room 5

execute as @a[gamemode=!spectator,scores={Room=5}] run function luigis_beta_mansion:room/original/study/tick_per_player

function #luigis_beta_mansion:room/original/study/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=5},limit=1] run function luigis_beta_mansion:room/original/study/ghosts

function luigis_beta_mansion:room/original/door/hallway_2_study

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.study.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=5},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.study{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.study.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time