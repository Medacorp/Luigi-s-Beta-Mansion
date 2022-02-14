execute unless score #missingno_28 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_28/load
execute as @a[gamemode=!spectator,x=652,y=19,z=-29,dx=12,dy=8,dz=28] unless entity @s[scores={Room=44}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=652,y=19,z=-29,dx=12,dy=8,dz=28] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 44
scoreboard players set #temp Room 44

execute as @a[gamemode=!spectator,scores={Room=44}] run function luigis_beta_mansion:room/original/missingno_28/tick_per_player

function #luigis_beta_mansion:room/original/missingno_28/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=44},limit=1] run function luigis_beta_mansion:room/original/missingno_28/ghosts

function luigis_beta_mansion:room/original/door/missingno_6_missingno_28