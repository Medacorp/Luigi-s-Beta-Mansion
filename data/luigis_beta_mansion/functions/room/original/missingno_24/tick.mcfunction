execute unless score #missingno_24 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_24/load
execute as @a[gamemode=!spectator,x=645,y=92,z=-9,dx=6,dy=6,dz=10] unless entity @s[scores={Room=40}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=645,y=92,z=-9,dx=6,dy=6,dz=10] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 40
scoreboard players set #temp Room 40

execute as @a[gamemode=!spectator,scores={Room=40}] run function luigis_beta_mansion:room/original/missingno_24/tick_per_player

function #luigis_beta_mansion:room/original/missingno_24/interactions/room

function luigis_beta_mansion:room/original/missingno_24/ghosts