tag @s[x=702.5,y=11,z=39.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=702.5,y=11,z=39.5,distance=..0.7,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=702.5,y=11,z=39.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/dining_room/search/chair_6