execute unless score #missingno_54 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_54/load
execute as @a[gamemode=!spectator,x=734,y=19,z=-39,dx=14,dy=8,dz=20] unless entity @s[scores={Room=70}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=734,y=19,z=-39,dx=14,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 70

execute as @a[gamemode=!spectator,scores={Room=70}] run function luigis_beta_mansion:room/original/missingno_54/tick_per_player

function #luigis_beta_mansion:room/original/missingno_54/interactions/room

function luigis_beta_mansion:room/original/missingno_54/ghosts

function luigis_beta_mansion:room/original/door/missingno_9_missingno_54
function luigis_beta_mansion:room/original/door/missingno_54_missingno_55