execute unless score #missingno_42 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_42/load
execute as @a[gamemode=!spectator,x=734,y=1,z=-63,dx=14,dy=8,dz=21] unless entity @s[scores={Room=58}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=734,y=1,z=-63,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 58
scoreboard players set #temp Room 58

execute as @a[gamemode=!spectator,scores={Room=58}] run function luigis_beta_mansion:room/original/missingno_42/tick_per_player

function #luigis_beta_mansion:room/original/missingno_42/interactions/room

function luigis_beta_mansion:room/original/missingno_42/ghosts

function luigis_beta_mansion:room/original/door/missingno_12_missingno_42
function luigis_beta_mansion:room/original/door/missingno_42_missingno_43