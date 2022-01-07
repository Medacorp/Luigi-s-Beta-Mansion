execute unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_2:1b} run setblock 3703 110 17 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_beta_mansion:gameboy_horror_map/door/single_locked",rotation:"CLOCKWISE_90"}
execute if data storage luigis_mansion:data current_state.current_data.used_keys{hallway_2:1b} run setblock 3703 110 17 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_beta_mansion:gameboy_horror_map/door/single_unlocked",rotation:"CLOCKWISE_90"}
tag @e[tag=hallway_2,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{hallway_2:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_2:1b} positioned 3703 110 17 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single_90
tag @e[tag=this_entity,limit=1] add hallway_2
tag @e[tag=this_entity,limit=1] remove this_entity
setblock 3703 111 17 minecraft:redstone_block