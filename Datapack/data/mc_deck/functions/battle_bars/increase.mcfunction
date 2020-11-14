execute store result bossbar souls value run scoreboard players add @s player_souls 10

execute store result bossbar card_health value run scoreboard players add @s player_card_hp 10

tellraw @s ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" Increased","color":"aqua"},{"text":" the Battle Bars","color":"green"}]