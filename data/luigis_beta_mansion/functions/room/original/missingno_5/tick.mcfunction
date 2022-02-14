execute unless score #missingno_5 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_5/load
execute as @a[gamemode=!spectator,x=679,y=19,z=-29,dx=6,dy=8,dz=41] unless entity @s[scores={Room=21}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=679,y=19,z=-29,dx=6,dy=8,dz=41] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 21
scoreboard players set #temp Room 21

execute as @a[gamemode=!spectator,scores={Room=21}] run function luigis_beta_mansion:room/original/missingno_5/tick_per_player

function #luigis_beta_mansion:room/original/missingno_5/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=21},limit=1] run function luigis_beta_mansion:room/original/missingno_5/ghosts

function luigis_beta_mansion:room/original/door/missingno_2_missingno_5
function luigis_beta_mansion:room/original/door/missingno_5_missingno_25
function luigis_beta_mansion:room/original/door/missingno_5_missingno_26