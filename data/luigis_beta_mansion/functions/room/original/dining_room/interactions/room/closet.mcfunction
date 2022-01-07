execute unless score #dining_room_closet Search matches 1 run scoreboard players reset #dining_room_closet Searching
scoreboard players reset #dining_room_closet Search
execute if score #dining_room_closet Searching matches 20 run function luigis_beta_mansion:room/original/dining_room/search_closet
execute unless block 699 12 44 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/dining_room/search_closet
execute unless block 699 12 42 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/dining_room/search_closet