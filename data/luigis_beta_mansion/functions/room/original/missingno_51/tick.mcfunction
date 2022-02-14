execute unless score #missingno_51 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_51/load
execute as @a[gamemode=!spectator,x=693,y=19,z=-88,dx=17,dy=8,dz=33] unless entity @s[scores={Room=67}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=693,y=19,z=-88,dx=17,dy=8,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 67
scoreboard players set #temp Room 67

execute as @a[gamemode=!spectator,scores={Room=67}] run function luigis_beta_mansion:room/original/missingno_51/tick_per_player

function #luigis_beta_mansion:room/original/missingno_51/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=67},limit=1] run function luigis_beta_mansion:room/original/missingno_51/ghosts

function luigis_beta_mansion:room/original/door/missingno_8_missingno_51