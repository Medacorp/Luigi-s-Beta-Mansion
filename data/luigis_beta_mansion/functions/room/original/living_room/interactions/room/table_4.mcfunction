execute unless score #living_room_table_4 Search matches 1 run scoreboard players reset #living_room_table_4 Searching
scoreboard players reset #living_room_table_4 Search
execute if score #living_room_table_4 Searching matches 20 run function luigis_beta_mansion:room/original/living_room/search/table_4
scoreboard players operation #temp Searching = #living_room_table_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 727 21 19 run function luigis_mansion:blocks/search_sound/wood
scoreboard players reset #temp Searching
execute unless block 727 21 19 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/living_room/search/table_4