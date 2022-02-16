execute unless score #missingno_26 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_26/load
execute as @a[gamemode=!spectator,x=660,y=19,z=34,dx=8,dy=8,dz=14] unless entity @s[scores={Room=42}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=660,y=19,z=34,dx=8,dy=8,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 42
scoreboard players set #temp Room 42

execute as @a[gamemode=!spectator,scores={Room=42}] run function luigis_beta_mansion:room/original/missingno_26/tick_per_player

function #luigis_beta_mansion:room/original/missingno_26/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=42},limit=1] run function luigis_beta_mansion:room/original/missingno_26/ghosts

function luigis_beta_mansion:room/original/door/missingno_5_missingno_26