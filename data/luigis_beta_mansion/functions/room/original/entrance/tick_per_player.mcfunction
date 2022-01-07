execute if data storage luigis_mansion:data current_state.current_data.rooms.entrance{cleared:1b} unless entity @s[scores={MusicGroup=2,MusicType=3}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_beta_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.entrance{cleared:1b} unless entity @s[scores={MusicGroup=2,MusicType=2}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_beta_mansion:other/music/set/dark_room
title @s[tag=!seen_room_name] title {"translate":"luigis_beta_mansion:location.entrance"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.entrance{seen:0b} run function luigis_beta_mansion:room/original/entrance/set_seen

execute if data storage luigis_mansion:data {entered_mansion:0b} run playsound luigis_mansion:music.mansion.first_entrance music @s ~ ~ ~ 1000
execute if data storage luigis_mansion:data {entered_mansion:0b} run scoreboard players set @s Music 240
data modify storage luigis_mansion:data {} merge value {entered_mansion:1b}