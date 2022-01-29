execute unless score #missingno_4 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_4/load
execute as @a[gamemode=!spectator,x=678,y=10,z=-55,dx=8,dy=17,dz=25] unless entity @s[scores={Room=20}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=678,y=10,z=-55,dx=8,dy=17,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 20
scoreboard players set #temp Room 20

execute as @a[gamemode=!spectator,scores={Room=20}] run function luigis_beta_mansion:room/original/missingno_4/tick_per_player

function #luigis_beta_mansion:room/original/missingno_4/interactions/room

function luigis_beta_mansion:room/original/missingno_4/ghosts

function luigis_beta_mansion:room/original/door/missingno_4_missingno_22