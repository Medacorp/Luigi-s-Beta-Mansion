execute if data storage luigis_mansion:data current_state.current_data.rooms.living_room{cleared:1b} unless entity @s[scores={MusicGroup=2,MusicType=3}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_beta_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.living_room{cleared:1b} unless entity @s[scores={MusicGroup=2,MusicType=2}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_beta_mansion:other/music/set/dark_room
title @s[tag=!seen_room_name] title {"translate":"luigis_beta_mansion:location.living_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.living_room{seen:0b} run function luigis_beta_mansion:room/original/living_room/set_seen

execute unless data storage luigis_mansion:data {found_e_gadd:1b} unless entity @a[tag=meet_e_gadd,limit=1] run tag @s add meet_e_gadd