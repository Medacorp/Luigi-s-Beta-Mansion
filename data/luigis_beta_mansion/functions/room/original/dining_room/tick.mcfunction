execute unless score #dining_room Ticking matches 1 run function #luigis_beta_mansion:room/original/dining_room/load
execute as @a[gamemode=!spectator,x=697,y=10,z=28,dx=14,dy=8,dz=30] unless entity @s[scores={Room=14}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=697,y=10,z=28,dx=14,dy=8,dz=30] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 14
scoreboard players set #temp Room 14

execute as @a[gamemode=!spectator,scores={Room=14}] run function luigis_beta_mansion:room/original/dining_room/tick_per_player

function #luigis_beta_mansion:room/original/dining_room/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=14},limit=1] run function luigis_beta_mansion:room/original/dining_room/ghosts

function luigis_beta_mansion:room/original/door/hallway_3_dining_room
function luigis_beta_mansion:room/original/door/hallway_4_dining_room
function luigis_beta_mansion:room/original/door/dining_room_kitchen
function luigis_beta_mansion:room/original/door/dining_room_missingno_31
function luigis_beta_mansion:room/original/door/dining_room_missingno_32