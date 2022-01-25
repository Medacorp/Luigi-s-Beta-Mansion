execute unless score #living_room_table_2 Search matches 1 run scoreboard players reset #living_room_table_2 Searching
scoreboard players reset #living_room_table_2 Search
execute if score #living_room_table_2 Searching matches 20 run function luigis_beta_mansion:room/original/living_room/search/table_2
execute unless block 714 20 28 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/living_room/search/table_2
execute unless block 714 20 27 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/living_room/search/table_2