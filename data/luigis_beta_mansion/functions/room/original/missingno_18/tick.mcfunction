execute unless score #missingno_18 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_18/load
execute as @a[gamemode=!spectator,x=737,y=10,z=53,dx=14,dy=8,dz=20] unless entity @s[scores={Room=34}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=737,y=10,z=53,dx=14,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 34

execute as @a[gamemode=!spectator,scores={Room=34}] run function luigis_beta_mansion:room/original/missingno_18/tick_per_player

function #luigis_beta_mansion:room/original/missingno_18/interactions/room

function luigis_beta_mansion:room/original/missingno_18/ghosts

function luigis_beta_mansion:room/original/door/missingno_17_missingno_18
function luigis_beta_mansion:room/original/door/missingno_18_missingno_19