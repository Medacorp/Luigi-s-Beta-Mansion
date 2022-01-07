execute unless score #missingno_35 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_35/load
execute as @a[gamemode=!spectator,x=741,y=28,z=-17,dx=19,dy=8,dz=8] unless entity @s[scores={Room=51}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=741,y=28,z=-17,dx=19,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 51

execute as @a[gamemode=!spectator,scores={Room=51}] run function luigis_beta_mansion:room/original/missingno_35/tick_per_player

function #luigis_beta_mansion:room/original/missingno_35/interactions/room

function luigis_beta_mansion:room/original/missingno_35/ghosts

function luigis_beta_mansion:room/original/door/missingno_34_missingno_35
function luigis_beta_mansion:room/original/door/missingno_35_missingno_41