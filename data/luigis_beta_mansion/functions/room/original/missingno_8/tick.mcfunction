execute unless score #missingno_8 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_8/load
execute as @a[gamemode=!spectator,x=697,y=19,z=-23,dx=15,dy=8,dz=8] unless entity @s[scores={Room=24}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=697,y=19,z=-23,dx=15,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 24
scoreboard players set #temp Room 24

execute as @a[gamemode=!spectator,scores={Room=24}] run function luigis_beta_mansion:room/original/missingno_8/tick_per_player

function #luigis_beta_mansion:room/original/missingno_8/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=24},limit=1] run function luigis_beta_mansion:room/original/missingno_8/ghosts

function luigis_beta_mansion:room/original/door/missingno_8_missingno_51