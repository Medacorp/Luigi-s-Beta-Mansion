execute if entity @s[tag=hallway_1_living_room] unless data storage luigis_mansion:data {obtained_parlor_key:1b} run tag @s add locked
execute if entity @s[tag=hallway_1_living_room] if data storage luigis_mansion:data {used_parlor_key:0b,obtained_parlor_key:1b} run tag @s add unlock
execute if entity @s[tag=hallway_1_hallway_2] unless data storage luigis_mansion:data current_state.current_data{obtained_keys:{hallway_2:1b}} run tag @s add locked
execute if entity @s[tag=hallway_1_hallway_2] if data storage luigis_mansion:data current_state.current_data{used_keys:{hallway_2:0b},obtained_keys:{hallway_2:1b}} run tag @s add unlock
execute if entity @s[tag=entrance_hallway_3] unless data storage luigis_mansion:data current_state.current_data{obtained_keys:{hallway_3:1b}} run tag @s add locked
execute if entity @s[tag=entrance_hallway_3] if data storage luigis_mansion:data current_state.current_data{used_keys:{hallway_3:0b},obtained_keys:{hallway_3:1b}} run tag @s add unlock