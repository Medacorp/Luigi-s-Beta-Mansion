execute unless score #missingno_21 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_21/load
execute as @a[gamemode=!spectator,x=644,y=101,z=38,dx=27,dy=8,dz=18] unless entity @s[scores={Room=37}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=644,y=101,z=38,dx=27,dy=8,dz=18] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 37
scoreboard players set #temp Room 37

execute as @a[gamemode=!spectator,scores={Room=37}] run function luigis_beta_mansion:room/original/missingno_21/tick_per_player

function #luigis_beta_mansion:room/original/missingno_21/interactions/room

function luigis_beta_mansion:room/original/missingno_21/ghosts