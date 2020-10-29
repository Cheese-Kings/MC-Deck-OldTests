# Recieve gift
scoreboard players set $math.in_0 du_data 10
function du:math/random
execute as @a store result score @s daily_rubies run scoreboard players get $math.out_0 du_data

# Announce to chat
tellraw @s ["",{"text":"[Mc Deck]:","bold":true,"color":"yellow"},{"text":" You have recieved your","color":"green"},{"text":" Daily Gift","color":"blue"},{"text":"!","color":"green"}]