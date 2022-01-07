execute unless score #missingno_37 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_37/load
execute as @a[gamemode=!spectator,x=653,y=119,z=-42,dx=30,dy=24,dz=80] unless entity @s[scores={Room=53}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=653,y=119,z=-42,dx=30,dy=24,dz=80] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 53

execute as @a[gamemode=!spectator,scores={Room=53}] run function luigis_beta_mansion:room/original/missingno_37/tick_per_player

function #luigis_beta_mansion:room/original/missingno_37/interactions/room

function luigis_beta_mansion:room/original/missingno_37/ghosts

function luigis_beta_mansion:room/original/door/missingno_36_missingno_37
function luigis_beta_mansion:room/original/door/missingno_37_missingno_38
function luigis_beta_mansion:room/original/door/missingno_37_missingno_39