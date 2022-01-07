execute if block 682 20 75 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 677 111 38 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 682 20 74 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 682 21 74 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 677 111 39 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 677 112 39 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 682 20 75 682 21 75 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 682 20 74 682 21 74 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 677 111 38 677 112 38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 677 111 39 677 112 39 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 682 20 74 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 682 21 74 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 677 111 39 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 677 112 39 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 682 20 75 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 682 21 75 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 677 111 38 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 677 112 38 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched