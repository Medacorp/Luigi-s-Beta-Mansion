tag @s[x=661.0,y=11,z=39.0,dx=1,dy=0,dz=2,tag=check] add can_interact
execute if entity @s[x=661.0,y=11,z=39.0,dx=1,dy=0,dz=2,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=661.0,y=11,z=39.0,dx=1,dy=0,dz=2,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/lavatory/search/sink