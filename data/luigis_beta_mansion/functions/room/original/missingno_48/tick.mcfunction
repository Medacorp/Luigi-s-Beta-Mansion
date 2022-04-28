execute unless score #missingno_48 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_48/load
execute as @a[gamemode=!spectator,x=682,y=130,z=-31,dx=31,dy=15,dz=77] unless entity @s[scores={Room=64}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=682,y=130,z=-31,dx=31,dy=15,dz=77] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 64
scoreboard players set #temp Room 64

execute as @a[gamemode=!spectator,scores={Room=64}] run function luigis_beta_mansion:room/original/missingno_48/tick_per_player

function #luigis_beta_mansion:room/original/missingno_48/interactions/room

scoreboard players set #temp Room 64
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_48/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_48.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=64},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_48{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_48.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time