execute unless score #missingno_9 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_9/load
execute as @a[gamemode=!spectator,x=713,y=19,z=-42,dx=7,dy=8,dz=27] unless entity @s[scores={Room=25}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=713,y=19,z=-42,dx=7,dy=8,dz=27] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 25
scoreboard players set #temp Room 25

execute as @a[gamemode=!spectator,scores={Room=25}] run function luigis_beta_mansion:room/original/missingno_9/tick_per_player

function #luigis_beta_mansion:room/original/missingno_9/interactions/room

function luigis_beta_mansion:room/original/missingno_9/ghosts

function luigis_beta_mansion:room/original/door/hallway_1_missingno_9
function luigis_beta_mansion:room/original/door/missingno_9_missingno_54