execute unless score #missingno_3 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_3/load
execute as @a[gamemode=!spectator,x=672,y=110,z=37,dx=8,dy=8,dz=7] unless entity @s[scores={Room=19}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=672,y=110,z=37,dx=8,dy=8,dz=7] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 19
scoreboard players set #temp Room 19

execute as @a[gamemode=!spectator,scores={Room=19}] run function luigis_beta_mansion:room/original/missingno_3/tick_per_player

function #luigis_beta_mansion:room/original/missingno_3/interactions/room

function luigis_beta_mansion:room/original/missingno_3/ghosts

function luigis_beta_mansion:room/original/door/missingno_2_missingno_3