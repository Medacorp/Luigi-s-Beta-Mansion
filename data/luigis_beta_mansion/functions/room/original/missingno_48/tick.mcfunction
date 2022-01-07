execute unless score #missingno_48 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_48/load
execute as @a[gamemode=!spectator,x=682,y=130,z=-31,dx=31,dy=15,dz=77] unless entity @s[scores={Room=64}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=682,y=130,z=-31,dx=31,dy=15,dz=77] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 64

execute as @a[gamemode=!spectator,scores={Room=64}] run function luigis_beta_mansion:room/original/missingno_48/tick_per_player

function #luigis_beta_mansion:room/original/missingno_48/interactions/room

function luigis_beta_mansion:room/original/missingno_48/ghosts