execute unless score #missingno_34 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_34/load
execute as @a[gamemode=!spectator,x=732,y=28,z=-59,dx=14,dy=8,dz=25] unless entity @s[scores={Room=50}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=732,y=28,z=-59,dx=14,dy=8,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 50
scoreboard players set #temp Room 50

execute as @a[gamemode=!spectator,scores={Room=50}] run function luigis_beta_mansion:room/original/missingno_34/tick_per_player

function #luigis_beta_mansion:room/original/missingno_34/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=50},limit=1] run function luigis_beta_mansion:room/original/missingno_34/ghosts

function luigis_beta_mansion:room/original/door/missingno_11_missingno_34
function luigis_beta_mansion:room/original/door/missingno_34_missingno_35