scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
tag @s add me
tag @s remove vacuuming
summon minecraft:marker ~ ~ ~ {Tags:["interact","poltergust","water"]}
function luigis_beta_mansion:items/poltergust_500/expel_water
tag @s add expelling_water
kill @e[type=minecraft:marker,tag=interact,limit=1]
scoreboard players reset #temp Room
scoreboard players reset #temp ID
tag @s remove me