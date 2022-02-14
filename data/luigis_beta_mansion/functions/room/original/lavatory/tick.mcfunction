execute unless score #lavatory Ticking matches 1 run function #luigis_beta_mansion:room/original/lavatory/load
execute as @a[gamemode=!spectator,x=660,y=10,z=34,dx=8,dy=8,dz=14] unless entity @s[scores={Room=13}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=660,y=10,z=34,dx=8,dy=8,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 13
scoreboard players set #temp Room 13

execute as @e[scores={Room=13},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 661

execute as @a[gamemode=!spectator,scores={Room=13}] run function luigis_beta_mansion:room/original/lavatory/tick_per_player

function #luigis_beta_mansion:room/original/lavatory/interactions/room

execute if block 664 12 44 minecraft:oak_trapdoor run clone 664 12 44 664 12 44 658 12 44
execute if block 663 14 37 minecraft:oak_trapdoor[open=true] run setblock 659 14 37 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 37 minecraft:oak_trapdoor[open=false] run setblock 659 14 37 minecraft:oak_trapdoor[open=false,facing=west,half=top]
execute if block 663 14 36 minecraft:oak_trapdoor[open=true] run setblock 659 14 36 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 36 minecraft:oak_trapdoor[open=false] run setblock 659 14 36 minecraft:oak_trapdoor[open=false,facing=west,half=top]

execute if entity @a[gamemode=!spectator,scores={Room=13}] run function luigis_beta_mansion:room/original/lavatory/ghosts

function luigis_beta_mansion:room/original/door/hallway_5_lavatory