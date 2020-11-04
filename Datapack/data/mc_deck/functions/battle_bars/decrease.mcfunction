execute store result bossbar synergy value run scoreboard players remove @s player_synergy 10

execute store result bossbar card_health value run scoreboard players remove @s player_card_hp 10

tellraw @s ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" Decreased","color":"aqua"},{"text":" the Battle Bars","color":"green"}]