execute unless score #missingno_56 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_56/load
execute as @a[gamemode=!spectator,x=687,y=28,z=-80,dx=16,dy=8,dz=25] unless entity @s[scores={Room=72}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=687,y=28,z=-80,dx=16,dy=8,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 72
scoreboard players set #temp Room 72

execute as @a[gamemode=!spectator,scores={Room=72}] run function luigis_beta_mansion:room/original/missingno_56/tick_per_player

function #luigis_beta_mansion:room/original/missingno_56/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=72},limit=1] run function luigis_beta_mansion:room/original/missingno_56/ghosts

function luigis_beta_mansion:room/original/door/missingno_11_missingno_56
function luigis_beta_mansion:room/original/door/missingno_36_missingno_56