execute unless entity @s[tag=poltergust_selected,tag=!expelling] unless entity @s[scores={KnockbackType=2..}] unless entity @s[scores={ScareType=2..}] run function luigis_beta_mansion:items/poltergust_500/cool_down
execute if entity @s[scores={KnockbackType=2..}] unless entity @s[scores={ScareType=2..}] run function luigis_beta_mansion:items/poltergust_500/cool_down
execute if entity @s[scores={ScareType=2..}] run function luigis_beta_mansion:items/poltergust_500/cool_down