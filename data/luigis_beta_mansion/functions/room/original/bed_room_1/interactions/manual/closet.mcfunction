tag @s[x=685.0,y=111,z=54.0,dx=1,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=685.0,y=111,z=54.0,dx=1,dy=3,dz=1,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=685.0,y=111,z=54.0,dx=1,dy=3,dz=1,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/bed_room_1/search/closet