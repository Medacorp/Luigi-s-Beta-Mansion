execute unless score #missingno_1 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_1/load
execute as @a[gamemode=!spectator,x=683,y=19,z=22,dx=12,dy=8,dz=21] unless entity @s[scores={Room=17}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=683,y=19,z=22,dx=12,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 17
scoreboard players set #temp Room 17

execute as @a[gamemode=!spectator,scores={Room=17}] run function luigis_beta_mansion:room/original/missingno_1/tick_per_player

function #luigis_beta_mansion:room/original/missingno_1/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=17},limit=1] run function luigis_beta_mansion:room/original/missingno_1/ghosts

function luigis_beta_mansion:room/original/door/living_room_missingno_1
function luigis_beta_mansion:room/original/door/missingno_1_missingno_2