execute unless score #missingno_19 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_19/load
execute as @a[gamemode=!spectator,x=736,y=10,z=29,dx=14,dy=8,dz=21] unless entity @s[scores={Room=35}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=736,y=10,z=29,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 35
scoreboard players set #temp Room 35

execute as @a[gamemode=!spectator,scores={Room=35}] run function luigis_beta_mansion:room/original/missingno_19/tick_per_player

function #luigis_beta_mansion:room/original/missingno_19/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=35},limit=1] run function luigis_beta_mansion:room/original/missingno_19/ghosts

function luigis_beta_mansion:room/original/door/missingno_18_missingno_19