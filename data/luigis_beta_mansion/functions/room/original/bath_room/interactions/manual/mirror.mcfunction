tag @s[x=649.0,y=11,z=17.0,dx=2,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=649.0,y=11,z=17.0,dx=2,dy=2,dz=2,tag=sound] run playsound luigis_mansion:block.search.stone block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[x=649.0,y=11,z=17.0,dx=2,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/bath_room/search/mirror