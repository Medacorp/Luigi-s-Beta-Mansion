execute unless score #bed_room_1_closet Search matches 1 run scoreboard players reset #bed_room_1_closet Searching
scoreboard players reset #bed_room_1_closet Search
execute if score #bed_room_1_closet Searching matches 20 run function luigis_beta_mansion:room/original/bed_room_1/search_closet
execute unless block 686 112 54 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/bed_room_1/search_closet