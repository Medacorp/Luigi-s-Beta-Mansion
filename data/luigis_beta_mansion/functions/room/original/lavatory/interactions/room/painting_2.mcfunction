execute unless score #lavatory_painting_2 Search matches 1 run scoreboard players reset #lavatory_painting_2 Searching
scoreboard players reset #lavatory_painting_2 Search
execute if score #lavatory_painting_2 Searching matches 20 run function luigis_beta_mansion:room/original/lavatory/search/painting_2
scoreboard players operation #temp Searching = #lavatory_painting_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 15 45 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching