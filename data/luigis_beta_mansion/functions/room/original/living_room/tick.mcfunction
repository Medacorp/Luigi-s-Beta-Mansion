execute unless score #living_room Ticking matches 1 run function #luigis_beta_mansion:room/original/living_room/load
execute as @a[gamemode=!spectator,x=712,y=19,z=17,dx=17,dy=8,dz=21] unless entity @s[scores={Room=3}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=19,z=17,dx=17,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 3
scoreboard players set #temp Room 3

execute as @a[gamemode=!spectator,scores={Room=3}] run function luigis_beta_mansion:room/original/living_room/tick_per_player

function #luigis_beta_mansion:room/original/living_room/interactions/room

function luigis_beta_mansion:room/original/living_room/ghosts

function luigis_beta_mansion:room/original/door/hallway_1_living_room
function luigis_beta_mansion:room/original/door/living_room_missingno_1