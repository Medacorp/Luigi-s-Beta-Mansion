execute unless score #missingno_33 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_33/load
execute as @a[gamemode=!spectator,x=736,y=19,z=29,dx=14,dy=8,dz=21] unless entity @s[scores={Room=49}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=736,y=19,z=29,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 49
scoreboard players set #temp Room 49

execute as @a[gamemode=!spectator,scores={Room=49}] run function luigis_beta_mansion:room/original/missingno_33/tick_per_player

function #luigis_beta_mansion:room/original/missingno_33/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=49},limit=1] run function luigis_beta_mansion:room/original/missingno_33/ghosts

function luigis_beta_mansion:room/original/door/hallway_2_missingno_33