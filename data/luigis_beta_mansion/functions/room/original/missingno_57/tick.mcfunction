execute unless score #missingno_57 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_57/load
execute as @a[gamemode=!spectator,x=634,y=93,z=-27,dx=20,dy=7,dz=18] unless entity @s[scores={Room=73}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=634,y=93,z=-27,dx=20,dy=7,dz=18] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 73
scoreboard players set #temp Room 73

execute as @a[gamemode=!spectator,scores={Room=73}] run function luigis_beta_mansion:room/original/missingno_57/tick_per_player

function #luigis_beta_mansion:room/original/missingno_57/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=73},limit=1] run function luigis_beta_mansion:room/original/missingno_57/ghosts

function luigis_beta_mansion:room/original/door/missingno_45_missingno_57