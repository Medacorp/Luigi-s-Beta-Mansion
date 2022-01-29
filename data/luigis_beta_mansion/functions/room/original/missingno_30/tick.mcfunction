execute unless score #missingno_30 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_30/load
execute as @a[gamemode=!spectator,x=640,y=16,z=-83,dx=10,dy=11,dz=10] unless entity @s[scores={Room=46}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=640,y=16,z=-83,dx=10,dy=11,dz=10] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 46
scoreboard players set #temp Room 46

execute as @a[gamemode=!spectator,scores={Room=46}] run function luigis_beta_mansion:room/original/missingno_30/tick_per_player

function #luigis_beta_mansion:room/original/missingno_30/interactions/room

function luigis_beta_mansion:room/original/missingno_30/ghosts

function luigis_beta_mansion:room/original/door/missingno_29_missingno_30