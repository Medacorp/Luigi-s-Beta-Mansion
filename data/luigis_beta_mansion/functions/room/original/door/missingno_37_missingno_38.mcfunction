execute if block 676 120 37 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 676 120 38 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 676 120 36 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 676 121 36 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 676 120 39 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 676 121 39 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 676 120 37 676 121 37 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 676 120 36 676 121 36 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 676 120 38 676 121 38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 676 120 39 676 121 39 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 676 120 36 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 676 121 36 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 676 120 39 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 676 121 39 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 676 120 37 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 676 121 37 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 676 120 38 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 676 121 38 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched