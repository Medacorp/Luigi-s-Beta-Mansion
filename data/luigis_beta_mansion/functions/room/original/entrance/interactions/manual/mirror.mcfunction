tag @s[x=745.0,y=12,z=3.0,dx=1,dy=2,dz=1,tag=check] add can_interact
execute if entity @s[x=745.0,y=12,z=3.0,dx=1,dy=2,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=745.0,y=12,z=3.0,dx=1,dy=2,dz=1,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/entrance/search/mirror