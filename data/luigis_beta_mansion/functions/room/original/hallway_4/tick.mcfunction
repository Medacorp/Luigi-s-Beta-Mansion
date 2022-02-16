execute unless score #hallway_4 Ticking matches 1 run function #luigis_beta_mansion:room/original/hallway_4/load
execute as @a[gamemode=!spectator,x=686,y=10,z=-23,dx=26,dy=8,dz=8] unless entity @s[scores={Room=9}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=686,y=10,z=-23,dx=26,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 9
scoreboard players set #temp Room 9
tag @e[tag=ghost,scores={Room=9}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=9}] run function luigis_beta_mansion:room/original/hallway_4/tick_per_player

function #luigis_beta_mansion:room/original/hallway_4/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=9},limit=1] run function luigis_beta_mansion:room/original/hallway_4/ghosts

function luigis_beta_mansion:room/original/door/hallway_4_missingno_13
function luigis_beta_mansion:room/original/door/hallway_4_dining_room