tag @s[x=738.5,y=21,z=61.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=738.5,y=21,z=61.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=738.5,y=21,z=61.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/childs_room/search/painting_3