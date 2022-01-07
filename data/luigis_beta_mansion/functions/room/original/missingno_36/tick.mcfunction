execute unless score #missingno_36 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_36/load
execute as @a[gamemode=!spectator,x=724,y=28,z=-17,dx=16,dy=8,dz=8] unless entity @s[scores={Room=52}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=724,y=28,z=-17,dx=16,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 52

execute as @a[gamemode=!spectator,scores={Room=52}] run function luigis_beta_mansion:room/original/missingno_36/tick_per_player

function #luigis_beta_mansion:room/original/missingno_36/interactions/room

function luigis_beta_mansion:room/original/missingno_36/ghosts

function luigis_beta_mansion:room/original/door/missingno_36_missingno_37
function luigis_beta_mansion:room/original/door/missingno_36_missingno_47
function luigis_beta_mansion:room/original/door/missingno_36_missingno_56