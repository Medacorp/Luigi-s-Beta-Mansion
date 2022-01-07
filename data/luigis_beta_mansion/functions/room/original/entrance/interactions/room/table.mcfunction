execute unless score #entrance_table Search matches 1 run scoreboard players reset #entrance_table Searching
scoreboard players reset #entrance_table Search
execute if score #entrance_table Searching matches 20 run function luigis_beta_mansion:room/original/entrance/search_table
execute unless block 746 11 13 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/entrance/search_table