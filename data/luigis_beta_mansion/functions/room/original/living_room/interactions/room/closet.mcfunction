execute unless score #living_room_closet Search matches 1 run scoreboard players reset #living_room_closet Searching
scoreboard players reset #living_room_closet Search
execute if score #living_room_closet Searching matches 20 run function luigis_beta_mansion:room/original/living_room/search/closet
scoreboard players operation #temp Searching = #living_room_closet Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 21 34 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 714 21 35 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/living_room/search/closet
execute unless block 714 21 33 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/living_room/search/closet