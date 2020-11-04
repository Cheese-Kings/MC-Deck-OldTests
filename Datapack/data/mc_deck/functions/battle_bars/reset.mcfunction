bossbar set synergy value 0
scoreboard players reset @s player_synergy

bossbar set card_health value 0
scoreboard players reset @s player_card_hp

tellraw @s ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" Reset","color":"aqua"},{"text":" the Battle Bars","color":"green"}]