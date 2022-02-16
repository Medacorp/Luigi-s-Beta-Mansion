execute unless score #missingno_39 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_39/load
execute as @a[gamemode=!spectator,x=723,y=28,z=40,dx=16,dy=8,dz=8] unless entity @s[scores={Room=55}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=723,y=28,z=40,dx=16,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 55
scoreboard players set #temp Room 55

execute as @a[gamemode=!spectator,scores={Room=55}] run function luigis_beta_mansion:room/original/missingno_39/tick_per_player

function #luigis_beta_mansion:room/original/missingno_39/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=55},limit=1] run function luigis_beta_mansion:room/original/missingno_39/ghosts

function luigis_beta_mansion:room/original/door/missingno_37_missingno_39
function luigis_beta_mansion:room/original/door/missingno_39_missingno_50
function luigis_beta_mansion:room/original/door/missingno_39_missingno_47