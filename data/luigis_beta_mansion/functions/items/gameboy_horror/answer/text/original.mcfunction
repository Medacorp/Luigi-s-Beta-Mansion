execute if entity @s[scores={GBHCall=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_beta_mansion:message.gameboy_horror.1"}]}

scoreboard players set @s[scores={MusicType=19}] GBHDialog 0
execute if entity @s[tag=hang_up] as @a run function luigis_mansion:other/music/set/silence
scoreboard players set @a GBHCall 0 
scoreboard players set @a GBHWait 0