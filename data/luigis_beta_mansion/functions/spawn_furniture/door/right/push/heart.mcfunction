summon minecraft:villager ^ ^ ^0.5 {Team:"NoCollision",CustomName:'{"translate":"luigis_mansion:entity.door"}',NoAI:1b,CustomNameVisible:0b,Invulnerable:1b,Silent:1b,Offers:{},AbsorptionAmount:1.0f,HandDropChances:[1.0f,1.0f],ActiveEffects:[{Id:14b,Ambient:1b,Duration:1000000,Amplifier:0,ShowParticles:0b}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],PersistenceRequired:1b,LeftHanded:0b,Tags:["door","this_entity"]}
summon minecraft:armor_stand ^-0.125 ^ ^0.44 {CustomName:'{"translate":"luigis_mansion:entity.door"}',Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:11,CustomModelData:16}},{}],Tags:["door","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ^-0.125 ^ ^0.44 {CustomName:'{"translate":"luigis_mansion:entity.door"}',Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:16,CustomModelData:0}}],Tags:["door","frame","static","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity] positioned as @s run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity] Sound 0
execute as @e[tag=this_entity,type=minecraft:villager,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.fake_door.health
tag @e[tag=this_entity] remove this_entity