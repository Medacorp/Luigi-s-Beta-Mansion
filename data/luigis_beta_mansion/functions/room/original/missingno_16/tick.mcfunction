execute unless score #missingno_16 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_16/load
execute as @a[gamemode=!spectator,x=734,y=10,z=-63,dx=14,dy=8,dz=21] unless entity @s[scores={Room=32}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=734,y=10,z=-63,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 32
scoreboard players set #temp Room 32

execute as @a[gamemode=!spectator,scores={Room=32}] run function luigis_beta_mansion:room/original/missingno_16/tick_per_player

function #luigis_beta_mansion:room/original/missingno_16/interactions/room

function luigis_beta_mansion:room/original/missingno_16/ghosts

function luigis_beta_mansion:room/original/door/missingno_15_missingno_16