execute unless score #missingno_44 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_44/load
execute as @a[gamemode=!spectator,x=699,y=1,z=-22,dx=13,dy=8,dz=8] unless entity @s[scores={Room=60}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=699,y=1,z=-22,dx=13,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 60
scoreboard players set #temp Room 60

execute as @a[gamemode=!spectator,scores={Room=60}] run function luigis_beta_mansion:room/original/missingno_44/tick_per_player

function #luigis_beta_mansion:room/original/missingno_44/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=60},limit=1] run function luigis_beta_mansion:room/original/missingno_44/ghosts

function luigis_beta_mansion:room/original/door/missingno_44_missingno_45
function luigis_beta_mansion:room/original/door/missingno_44_missingno_46
function luigis_beta_mansion:room/original/door/missingno_44_missingno_52