execute unless score #bed_room_1_table Search matches 1 run scoreboard players reset #bed_room_1_table Searching
scoreboard players reset #bed_room_1_table Search
execute if score #bed_room_1_table Searching matches 20 run function luigis_beta_mansion:room/original/bed_room_1/search/table
execute unless block 685 111 47 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/bed_room_1/search/table