execute unless score #childs_room_table_2 Search matches 1 run scoreboard players reset #childs_room_table_2 Searching
scoreboard players reset #childs_room_table_2 Search
execute if score #childs_room_table_2 Searching matches 20 run function luigis_beta_mansion:room/original/childs_room/search/table_2
execute unless block 739 20 56 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/childs_room/search/table_2
execute unless block 739 20 55 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/childs_room/search/table_2