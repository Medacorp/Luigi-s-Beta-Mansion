tag @s[x=714.5,y=12,z=-10.5,distance=..1.5,tag=check] add can_interact
execute if entity @s[x=714.5,y=12,z=-10.5,distance=..1.5,tag=sound] run playsound luigis_mansion:block.search.ceramic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=714.5,y=12,z=-10.5,distance=..1.5,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/hallway_3/search/jar_3