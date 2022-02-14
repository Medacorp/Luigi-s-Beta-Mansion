execute unless score #missingno_17 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_17/load
execute as @a[gamemode=!spectator,x=712,y=10,z=57,dx=8,dy=8,dz=20] unless entity @s[scores={Room=33}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=10,z=57,dx=8,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 33
scoreboard players set #temp Room 33

execute as @a[gamemode=!spectator,scores={Room=33}] run function luigis_beta_mansion:room/original/missingno_17/tick_per_player

function #luigis_beta_mansion:room/original/missingno_17/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=33},limit=1] run function luigis_beta_mansion:room/original/missingno_17/ghosts

function luigis_beta_mansion:room/original/door/hallway_3_missingno_17
function luigis_beta_mansion:room/original/door/kitchen_missingno_17
function luigis_beta_mansion:room/original/door/missingno_17_missingno_18