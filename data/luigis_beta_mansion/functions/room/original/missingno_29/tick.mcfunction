execute unless score #missingno_29 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_29/load
execute as @a[gamemode=!spectator,x=660,y=19,z=-93,dx=12,dy=8,dz=22] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=660,y=19,z=-93,dx=12,dy=8,dz=22] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 45

execute as @a[gamemode=!spectator,scores={Room=45}] run function luigis_beta_mansion:room/original/missingno_29/tick_per_player

function #luigis_beta_mansion:room/original/missingno_29/interactions/room

function luigis_beta_mansion:room/original/missingno_29/ghosts

function luigis_beta_mansion:room/original/door/missingno_7_missingno_29
function luigis_beta_mansion:room/original/door/missingno_29_missingno_30