execute unless score #study Ticking matches 1 run function #luigis_beta_mansion:room/original/study/load
execute as @a[gamemode=!spectator,x=700,y=19,z=42,dx=17,dy=8,dz=21] unless entity @s[scores={Room=5}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=700,y=19,z=42,dx=17,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 5

execute as @a[gamemode=!spectator,scores={Room=5}] run function luigis_beta_mansion:room/original/study/tick_per_player

function #luigis_beta_mansion:room/original/study/interactions/room

function luigis_beta_mansion:room/original/study/ghosts

function luigis_beta_mansion:room/original/door/hallway_2_study