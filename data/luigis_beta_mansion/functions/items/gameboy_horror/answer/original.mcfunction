execute if entity @s[scores={GBHCall=1}] unless entity @s[scores={GBHWait=1200}] run function luigis_beta_mansion:dialog/end_of_mansion/original
scoreboard players set @s[tag=hang_up] GBHWait 1200
execute if entity @s[scores={GBHWait=1200}] run function luigis_beta_mansion:items/gameboy_horror/answer/text/original