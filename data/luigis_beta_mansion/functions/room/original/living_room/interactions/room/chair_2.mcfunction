execute unless score #living_room_chair_2 Search matches 1 run scoreboard players reset #living_room_chair_2 Searching
scoreboard players reset #living_room_chair_2 Search
execute if score #living_room_chair_2 Searching matches 20 run function luigis_beta_mansion:room/original/living_room/search/chair_2
scoreboard players operation #temp Searching = #living_room_chair_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 719 20 32 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching