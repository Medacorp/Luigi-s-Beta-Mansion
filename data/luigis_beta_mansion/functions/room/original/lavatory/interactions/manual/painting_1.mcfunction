tag @s[x=662.5,y=13,z=45.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=662.5,y=13,z=45.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=662.5,y=13,z=45.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/lavatory/search/painting_1