execute unless score #hallway_6 Ticking matches 1 run function #luigis_beta_mansion:room/original/hallway_6/load
execute as @a[gamemode=!spectator,x=667,y=10,z=4,dx=11,dy=8,dz=8] unless entity @s[scores={Room=11}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=667,y=10,z=4,dx=11,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 11
scoreboard players set #temp Room 11
tag @e[tag=ghost,scores={Room=11}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=11}] run function luigis_beta_mansion:room/original/hallway_6/tick_per_player

function #luigis_beta_mansion:room/original/hallway_6/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=11},limit=1] run function luigis_beta_mansion:room/original/hallway_6/ghosts

function luigis_beta_mansion:room/original/door/hallway_6_bath_room
function luigis_beta_mansion:room/original/door/hallway_6_missingno_20