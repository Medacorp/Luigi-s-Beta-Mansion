execute unless score #missingno_27 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_27/load
execute as @a[gamemode=!spectator,x=648,y=19,z=15,dx=12,dy=8,dz=14] unless entity @s[scores={Room=43}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=648,y=19,z=15,dx=12,dy=8,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 43

execute as @a[gamemode=!spectator,scores={Room=43}] run function luigis_beta_mansion:room/original/missingno_27/tick_per_player

function #luigis_beta_mansion:room/original/missingno_27/interactions/room

function luigis_beta_mansion:room/original/missingno_27/ghosts

function luigis_beta_mansion:room/original/door/missingno_6_missingno_27