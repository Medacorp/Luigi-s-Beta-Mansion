tag @s[x=699.0,y=11,z=68.0,dx=2,dy=3,dz=3,tag=check] add can_interact
execute if entity @s[x=699.0,y=11,z=68.0,dx=2,dy=3,dz=3,tag=sound] run playsound luigis_mansion:block.search.metal block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=699.0,y=11,z=68.0,dx=2,dy=3,dz=3,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/kitchen/search/fridge