execute unless score #hallway_5 Ticking matches 1 run function #luigis_beta_mansion:room/original/hallway_5/load
execute as @a[gamemode=!spectator,x=679,y=10,z=-29,dx=6,dy=8,dz=41] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=679,y=10,z=-29,dx=6,dy=8,dz=41] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 10
scoreboard players set #temp Room 10
tag @e[tag=ghost,scores={Room=10}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=10}] run function luigis_beta_mansion:room/original/hallway_5/tick_per_player

function #luigis_beta_mansion:room/original/hallway_5/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=10},limit=1] run function luigis_beta_mansion:room/original/hallway_5/ghosts

function luigis_beta_mansion:room/original/door/hallway_5_lavatory
function luigis_beta_mansion:room/original/door/hallway_5_missingno_31