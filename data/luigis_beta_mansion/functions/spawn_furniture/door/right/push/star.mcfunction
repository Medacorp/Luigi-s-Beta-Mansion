summon minecraft:armor_stand ^-0.125 ^ ^0.44 {CustomName:'{"translate":"luigis_mansion:entity.door"}',Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:11,CustomModelData:17}},{}],Tags:["door","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ^-0.125 ^ ^0.44 {CustomName:'{"translate":"luigis_mansion:entity.door"}',Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:16,CustomModelData:0}}],Tags:["door","frame","static","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity] positioned as @s run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity] Sound 0
scoreboard players set @e[tag=this_entity] AnimationProg 0
execute as @e[tag=this_entity,tag=frame,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.fake_door.health
tag @e[tag=this_entity] remove this_entity