tag @s[x=709.0,y=14,z=70.0,dx=0,dy=1,dz=2,tag=check] add can_interact
execute if entity @s[x=709.0,y=14,z=70.0,dx=0,dy=1,dz=2,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=709.0,y=14,z=70.0,dx=0,dy=1,dz=2,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/kitchen/search/shelf_5