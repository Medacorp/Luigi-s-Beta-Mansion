execute unless score #missingno_46 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_46/load
execute as @a[gamemode=!spectator,x=686,y=1,z=-63,dx=14,dy=8,dz=21] unless entity @s[scores={Room=62}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=686,y=1,z=-63,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 62

execute as @a[gamemode=!spectator,scores={Room=62}] run function luigis_beta_mansion:room/original/missingno_46/tick_per_player

function #luigis_beta_mansion:room/original/missingno_46/interactions/room

function luigis_beta_mansion:room/original/missingno_46/ghosts

function luigis_beta_mansion:room/original/door/missingno_44_missingno_46