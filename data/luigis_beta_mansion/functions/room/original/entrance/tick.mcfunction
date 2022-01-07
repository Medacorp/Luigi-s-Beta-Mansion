execute unless score #entrance Ticking matches 1 run function #luigis_beta_mansion:room/original/entrance/load
execute as @a[gamemode=!spectator,x=743,y=10,z=-2,dx=15,dy=17,dz=21] unless entity @s[scores={Room=1}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=743,y=10,z=-2,dx=15,dy=17,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 1
tag @e[tag=ghost,scores={Room=1}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=1}] run function luigis_beta_mansion:room/original/entrance/tick_per_player

execute if entity @a[gamemode=!spectator,x=751.0,y=11,z=9.0,distance=..5] run tag @e[type=minecraft:armor_stand,tag=first_key,limit=1] add play

function #luigis_beta_mansion:room/original/entrance/interactions/room

function luigis_beta_mansion:room/original/entrance/ghosts

function luigis_beta_mansion:room/original/door/boo_woods_entrance
function luigis_beta_mansion:room/original/door/entrance_hallway_3