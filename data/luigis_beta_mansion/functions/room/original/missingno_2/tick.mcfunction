execute unless score #missingno_2 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_2/load
execute as @a[gamemode=!spectator,x=676,y=19,z=55,dx=12,dy=8,dz=21] unless entity @s[scores={Room=18}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=676,y=19,z=55,dx=12,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 18

execute as @a[gamemode=!spectator,scores={Room=18}] run function luigis_beta_mansion:room/original/missingno_2/tick_per_player

function #luigis_beta_mansion:room/original/missingno_2/interactions/room

function luigis_beta_mansion:room/original/missingno_2/ghosts

function luigis_beta_mansion:room/original/door/missingno_1_missingno_2
function luigis_beta_mansion:room/original/door/missingno_2_missingno_3
function luigis_beta_mansion:room/original/door/missingno_2_missingno_5