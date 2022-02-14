execute unless score #missingno_25 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_25/load
execute as @a[gamemode=!spectator,x=637,y=19,z=-62,dx=12,dy=8,dz=33] unless entity @s[scores={Room=41}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=637,y=19,z=-62,dx=12,dy=8,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 41
scoreboard players set #temp Room 41

execute as @a[gamemode=!spectator,scores={Room=41}] run function luigis_beta_mansion:room/original/missingno_25/tick_per_player

function #luigis_beta_mansion:room/original/missingno_25/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=41},limit=1] run function luigis_beta_mansion:room/original/missingno_25/ghosts

function luigis_beta_mansion:room/original/door/missingno_5_missingno_25