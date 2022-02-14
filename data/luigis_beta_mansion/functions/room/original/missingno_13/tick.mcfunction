execute unless score #missingno_13 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_13/load
execute as @a[gamemode=!spectator,x=695,y=10,z=-70,dx=17,dy=8,dz=33] unless entity @s[scores={Room=29}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=695,y=10,z=-70,dx=17,dy=8,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 29
scoreboard players set #temp Room 29

execute as @a[gamemode=!spectator,scores={Room=29}] run function luigis_beta_mansion:room/original/missingno_13/tick_per_player

function #luigis_beta_mansion:room/original/missingno_13/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=29},limit=1] run function luigis_beta_mansion:room/original/missingno_13/ghosts

function luigis_beta_mansion:room/original/door/hallway_4_missingno_13
function luigis_beta_mansion:room/original/door/missingno_13_missingno_14