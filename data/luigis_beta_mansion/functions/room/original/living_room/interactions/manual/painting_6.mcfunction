tag @s[x=717.0,y=21,z=18.0,dx=0,dy=1,dz=0,tag=check] add can_interact
execute if entity @s[x=717.0,y=21,z=18.0,dx=0,dy=1,dz=0,tag=sound] run playsound luigis_mansion:block.search.generic block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=717.0,y=21,z=18.0,dx=0,dy=1,dz=0,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/living_room/search/painting_6