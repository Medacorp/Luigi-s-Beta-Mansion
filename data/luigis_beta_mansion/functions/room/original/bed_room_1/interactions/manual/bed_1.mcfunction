tag @s[x=685.0,y=111,z=48.0,dx=4,dy=1,dz=3,tag=check] add can_interact
execute if entity @s[x=685.0,y=111,z=48.0,dx=4,dy=1,dz=3,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=685.0,y=111,z=48.0,dx=4,dy=1,dz=3,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/bed_room_1/search/bed_1