function luigis_beta_mansion:items/poltergust_500/effect_on_entity/vacuum/effect/ghost/pull_and_capture
execute if entity @s[tag=captured] run tag @a[tag=me,distance=..1.2,limit=1] add exploding_poltergust