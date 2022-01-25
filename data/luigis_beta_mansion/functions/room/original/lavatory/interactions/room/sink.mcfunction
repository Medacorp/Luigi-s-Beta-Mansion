execute unless score #lavatory_sink Search matches 1 run scoreboard players reset #lavatory_sink Searching
scoreboard players reset #lavatory_sink Search
execute if score #lavatory_sink Searching matches 20 run function luigis_beta_mansion:room/original/lavatory/search/sink
execute unless block 662 11 40 minecraft:dropper{LootTable:"luigis_mansion:search"} run function luigis_beta_mansion:room/original/lavatory/search/sink