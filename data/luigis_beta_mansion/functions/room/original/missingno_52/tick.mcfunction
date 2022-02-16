execute unless score #missingno_52 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_52/load
execute as @a[gamemode=!spectator,x=686,y=1,z=-6,dx=14,dy=8,dz=18] unless entity @s[scores={Room=68}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=686,y=1,z=-6,dx=14,dy=8,dz=18] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 68
scoreboard players set #temp Room 68

execute as @a[gamemode=!spectator,scores={Room=68}] run function luigis_beta_mansion:room/original/missingno_52/tick_per_player

function #luigis_beta_mansion:room/original/missingno_52/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=68},limit=1] run function luigis_beta_mansion:room/original/missingno_52/ghosts

function luigis_beta_mansion:room/original/door/missingno_44_missingno_52