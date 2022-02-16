execute unless score #missingno_41 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_41/load
execute as @a[gamemode=!spectator,x=736,y=28,z=0,dx=20,dy=8,dz=35] unless entity @s[scores={Room=57}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=736,y=28,z=0,dx=20,dy=8,dz=35] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 57
scoreboard players set #temp Room 57

execute as @a[gamemode=!spectator,scores={Room=57}] run function luigis_beta_mansion:room/original/missingno_41/tick_per_player

function #luigis_beta_mansion:room/original/missingno_41/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=57},limit=1] run function luigis_beta_mansion:room/original/missingno_41/ghosts

function luigis_beta_mansion:room/original/door/missingno_35_missingno_41
function luigis_beta_mansion:room/original/door/missingno_40_missingno_41
function luigis_beta_mansion:room/original/door/missingno_41_missingno_47