execute unless score #missingno_15 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_15/load
execute as @a[gamemode=!spectator,x=734,y=10,z=-39,dx=14,dy=8,dz=20] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=734,y=10,z=-39,dx=14,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 31

execute as @a[gamemode=!spectator,scores={Room=31}] run function luigis_beta_mansion:room/original/missingno_15/tick_per_player

function #luigis_beta_mansion:room/original/missingno_15/interactions/room

function luigis_beta_mansion:room/original/missingno_15/ghosts

function luigis_beta_mansion:room/original/door/hallway_3_missingno_15
function luigis_beta_mansion:room/original/door/missingno_15_missingno_16