execute if entity @s[x=719.5,y=20,z=32.5,distance=..0.7] run tellraw @a {"translate":"chat.type.text","with":[{"selector":"@p[tag=scanning_player,gamemode=!spectator]","color":"green"},{"translate":"luigis_mansion:message.player.scan_furniture.30"}]}