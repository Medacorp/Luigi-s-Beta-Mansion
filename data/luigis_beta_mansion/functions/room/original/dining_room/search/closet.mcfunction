execute positioned 699 12 43 run function luigis_mansion:blocks/dust
scoreboard players set #dining_room_closet Searched 1
data merge block 699 12 44 {LootTable:"luigis_mansion:search"}
data merge block 699 12 42 {LootTable:"luigis_mansion:search"}
tag @e[x=699.5,y=11,z=43.5,distance=..0.7,tag=ghost,tag=hidden] add spawn