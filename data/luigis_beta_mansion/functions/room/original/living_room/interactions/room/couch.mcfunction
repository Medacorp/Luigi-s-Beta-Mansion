execute unless score #living_room_couch Search matches 1 run scoreboard players reset #living_room_couch Searching
scoreboard players reset #living_room_couch Search
execute if score #living_room_couch Searching matches 20 run function luigis_beta_mansion:room/original/living_room/search/couch
scoreboard players operation #temp Searching = #living_room_couch Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 721 20 19 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching