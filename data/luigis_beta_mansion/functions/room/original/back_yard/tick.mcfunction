execute unless score #back_yard Ticking matches 1 run function #luigis_beta_mansion:room/original/back_yard/load
execute as @a[gamemode=!spectator,x=671,y=101,z=37,dx=14,dy=8,dz=19] unless entity @s[scores={Room=16}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=671,y=101,z=37,dx=14,dy=8,dz=19] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 16
scoreboard players set #temp Room 16

execute as @a[gamemode=!spectator,scores={Room=16}] run function luigis_beta_mansion:room/original/back_yard/tick_per_player

function #luigis_beta_mansion:room/original/back_yard/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=16},limit=1] run function luigis_beta_mansion:room/original/back_yard/ghosts

function luigis_beta_mansion:room/original/door/kitchen_back_yard