tag @s[x=724.5,y=21,z=56.5,distance=..1.5,tag=check] add can_interact
execute if entity @s[x=724.5,y=21,z=56.5,distance=..1.5,tag=sound] run playsound luigis_mansion:block.search.ceramic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=724.5,y=21,z=56.5,distance=..1.5,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/hallway_2/search/jar_2