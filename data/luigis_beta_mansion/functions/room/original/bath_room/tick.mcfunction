execute unless score #bath_room Ticking matches 1 run function #luigis_beta_mansion:room/original/bath_room/load
execute as @a[gamemode=!spectator,x=648,y=10,z=15,dx=12,dy=8,dz=14] unless entity @s[scores={Room=12}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=648,y=10,z=15,dx=12,dy=8,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 12
scoreboard players set #temp Room 12

execute as @e[scores={Room=12},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 649

execute as @a[gamemode=!spectator,scores={Room=12}] run function luigis_beta_mansion:room/original/bath_room/tick_per_player

function #luigis_beta_mansion:room/original/bath_room/interactions/room

clone 654 12 21 654 16 27 644 12 21

execute if entity @a[gamemode=!spectator,scores={Room=12}] run function luigis_beta_mansion:room/original/bath_room/ghosts

function luigis_beta_mansion:room/original/door/hallway_6_bath_room