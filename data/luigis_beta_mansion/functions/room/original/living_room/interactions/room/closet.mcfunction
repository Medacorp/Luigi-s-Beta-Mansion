execute unless score #living_room_closet Search matches 1 run scoreboard players reset #living_room_closet Searching
scoreboard players reset #living_room_closet Search
execute if score #living_room_closet Searching matches 20 run function luigis_beta_mansion:room/original/living_room/search_closet
execute unless block 714 21 35 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/living_room/search_closet
execute unless block 714 21 33 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/living_room/search_closet