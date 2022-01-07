execute unless score #hallway_3 Ticking matches 1 run function #luigis_beta_mansion:room/original/hallway_3/load
execute as @a[gamemode=!spectator,x=713,y=10,z=-35,dx=7,dy=8,dz=60] unless entity @s[scores={Room=8}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=713,y=10,z=-35,dx=7,dy=8,dz=60] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 8
tag @e[tag=ghost,scores={Room=8}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=8}] run function luigis_beta_mansion:room/original/hallway_3/tick_per_player

function #luigis_beta_mansion:room/original/hallway_3/interactions/room

function luigis_beta_mansion:room/original/hallway_3/ghosts

function luigis_beta_mansion:room/original/door/entrance_hallway_3
function luigis_beta_mansion:room/original/door/hallway_3_dining_room
function luigis_beta_mansion:room/original/door/hallway_3_missingno_12
function luigis_beta_mansion:room/original/door/hallway_3_missingno_15
function luigis_beta_mansion:room/original/door/hallway_3_missingno_17