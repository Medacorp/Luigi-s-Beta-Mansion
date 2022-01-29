execute unless score #missingno_31 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_31/load
execute as @a[gamemode=!spectator,x=673,y=10,z=64,dx=15,dy=8,dz=27] unless entity @s[scores={Room=47}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=673,y=10,z=64,dx=15,dy=8,dz=27] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 47
scoreboard players set #temp Room 47

execute as @a[gamemode=!spectator,scores={Room=47}] run function luigis_beta_mansion:room/original/missingno_31/tick_per_player

function #luigis_beta_mansion:room/original/missingno_31/interactions/room

function luigis_beta_mansion:room/original/missingno_31/ghosts

function luigis_beta_mansion:room/original/door/hallway_5_missingno_31
function luigis_beta_mansion:room/original/door/dining_room_missingno_31
function luigis_beta_mansion:room/original/door/missingno_31_missingno_32