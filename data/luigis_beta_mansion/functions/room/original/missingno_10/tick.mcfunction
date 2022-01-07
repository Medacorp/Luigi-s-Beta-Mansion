execute unless score #missingno_10 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_10/load
execute as @a[gamemode=!spectator,x=712,y=19,z=-55,dx=8,dy=17,dz=12] unless entity @s[scores={Room=26}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=19,z=-55,dx=8,dy=17,dz=12] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 26

execute as @a[gamemode=!spectator,scores={Room=26}] run function luigis_beta_mansion:room/original/missingno_10/tick_per_player

function #luigis_beta_mansion:room/original/missingno_10/interactions/room

function luigis_beta_mansion:room/original/missingno_10/ghosts