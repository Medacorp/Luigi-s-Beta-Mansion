execute unless score #childs_room Ticking matches 1 run function #luigis_beta_mansion:room/original/childs_room/load
execute as @a[gamemode=!spectator,x=737,y=19,z=53,dx=14,dy=8,dz=20] unless entity @s[scores={Room=7}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=737,y=19,z=53,dx=14,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 7
scoreboard players set #temp Room 7

execute as @a[gamemode=!spectator,scores={Room=7}] run function luigis_beta_mansion:room/original/childs_room/tick_per_player

function #luigis_beta_mansion:room/original/childs_room/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=7},limit=1] run function luigis_beta_mansion:room/original/childs_room/ghosts

function luigis_beta_mansion:room/original/door/hallway_2_childs_room