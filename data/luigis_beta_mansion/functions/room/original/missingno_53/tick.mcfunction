execute unless score #missingno_53 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_53/load
execute as @a[gamemode=!spectator,x=721,y=1,z=-6,dx=21,dy=8,dz=18] unless entity @s[scores={Room=69}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=721,y=1,z=-6,dx=21,dy=8,dz=18] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 69

execute as @a[gamemode=!spectator,scores={Room=69}] run function luigis_beta_mansion:room/original/missingno_53/tick_per_player

function #luigis_beta_mansion:room/original/missingno_53/interactions/room

function luigis_beta_mansion:room/original/missingno_53/ghosts

function luigis_beta_mansion:room/original/door/missingno_43_missingno_53