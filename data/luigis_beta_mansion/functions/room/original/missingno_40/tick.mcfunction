execute unless score #missingno_40 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_40/load
execute as @a[gamemode=!spectator,x=740,y=28,z=40,dx=19,dy=8,dz=8] unless entity @s[scores={Room=56}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=740,y=28,z=40,dx=19,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 56

execute as @a[gamemode=!spectator,scores={Room=56}] run function luigis_beta_mansion:room/original/missingno_40/tick_per_player

function #luigis_beta_mansion:room/original/missingno_40/interactions/room

function luigis_beta_mansion:room/original/missingno_40/ghosts

function luigis_beta_mansion:room/original/door/missingno_40_missingno_41
function luigis_beta_mansion:room/original/door/missingno_40_missingno_49