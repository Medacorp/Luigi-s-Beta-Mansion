execute unless score #missingno_38 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_38/load
execute as @a[gamemode=!spectator,x=672,y=120,z=37,dx=10,dy=8,dz=8] unless entity @s[scores={Room=54}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=672,y=120,z=37,dx=10,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 54
scoreboard players set #temp Room 54

execute as @a[gamemode=!spectator,scores={Room=54}] run function luigis_beta_mansion:room/original/missingno_38/tick_per_player

function #luigis_beta_mansion:room/original/missingno_38/interactions/room

function luigis_beta_mansion:room/original/missingno_38/ghosts

function luigis_beta_mansion:room/original/door/missingno_37_missingno_38