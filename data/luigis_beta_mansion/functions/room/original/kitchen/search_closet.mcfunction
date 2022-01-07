execute positioned 699 12 65 run function luigis_mansion:blocks/dust
scoreboard players set #kitchen_closet Searched 1
data merge block 699 12 66 {LootTable:"luigis_mansion:search"}
data merge block 699 12 64 {LootTable:"luigis_mansion:search"}
tag @e[x=699.5,y=11,z=65.5,distance=..0.7,tag=ghost,tag=hidden] add spawn