tag @s[x=702.5,y=11,z=39.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=702.5,y=11,z=39.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=702.5,y=11,z=39.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_beta_mansion:room/original/dining_room/search/chair_6