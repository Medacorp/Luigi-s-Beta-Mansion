tag @s[x=702.0,y=20,z=60.0,dx=0,dy=6,dz=1,tag=check] add can_interact
execute if entity @s[x=702.0,y=20,z=60.0,dx=0,dy=6,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=702.0,y=20,z=60.0,dx=0,dy=6,dz=1,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/study/search/bookshelf_1