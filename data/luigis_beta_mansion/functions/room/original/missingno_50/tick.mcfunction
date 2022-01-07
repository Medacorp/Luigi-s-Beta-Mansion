execute unless score #missingno_50 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_50/load
execute as @a[gamemode=!spectator,x=696,y=28,z=56,dx=17,dy=8,dz=25] unless entity @s[scores={Room=66}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=696,y=28,z=56,dx=17,dy=8,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 66

execute as @a[gamemode=!spectator,scores={Room=66}] run function luigis_beta_mansion:room/original/missingno_50/tick_per_player

function #luigis_beta_mansion:room/original/missingno_50/interactions/room

function luigis_beta_mansion:room/original/missingno_50/ghosts

function luigis_beta_mansion:room/original/door/missingno_39_missingno_50
function luigis_beta_mansion:room/original/door/missingno_49_missingno_50