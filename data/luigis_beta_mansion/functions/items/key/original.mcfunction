execute if entity @s[tag=parlor] unless data storage luigis_mansion:data {obtained_parlor_key:1b} run function luigis_beta_mansion:items/key/original/parlor
execute if entity @s[tag=hallway_2] unless data storage luigis_mansion:data current_state.current_data.obtained_keys{hallway_2:1b} run function luigis_beta_mansion:items/key/original/hallway_2
execute if entity @s[tag=hallway_3] unless data storage luigis_mansion:data current_state.current_data.obtained_keys{hallway_3:1b} run function luigis_beta_mansion:items/key/original/hallway_3