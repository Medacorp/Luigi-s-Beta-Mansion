execute unless score #missingno_45 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_45/load
execute as @a[gamemode=!spectator,x=653,y=1,z=-22,dx=33,dy=8,dz=8] unless entity @s[scores={Room=61}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=653,y=1,z=-22,dx=33,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 61
scoreboard players set #temp Room 61

execute as @a[gamemode=!spectator,scores={Room=61}] run function luigis_beta_mansion:room/original/missingno_45/tick_per_player

function #luigis_beta_mansion:room/original/missingno_45/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=61},limit=1] run function luigis_beta_mansion:room/original/missingno_45/ghosts

function luigis_beta_mansion:room/original/door/missingno_44_missingno_45
function luigis_beta_mansion:room/original/door/missingno_45_missingno_57