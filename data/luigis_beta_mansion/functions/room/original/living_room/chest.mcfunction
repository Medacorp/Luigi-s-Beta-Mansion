execute unless data storage luigis_mansion:data current_state.current_data.obtained_keys{hallway_2:1b} unless entity @e[type=minecraft:armor_stand,tag=key,tag=hallway_2,limit=1] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:item.key"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:15}}],Small:1b,NoGravity:1b,Tags:["item","key","eternal","hallway_2"],DisabledSlots:2039583}
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{living_room_chest:1b} run function luigis_beta_mansion:room/original/chest_coins
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {living_room_chest:1b}