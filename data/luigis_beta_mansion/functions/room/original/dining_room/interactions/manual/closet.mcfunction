tag @s[x=699.0,y=11,z=41.0,dx=1,dy=3,dz=4,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=41.0,dx=1,dy=3,dz=4,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=699.0,y=11,z=41.0,dx=1,dy=3,dz=4,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/dining_room/search/closet