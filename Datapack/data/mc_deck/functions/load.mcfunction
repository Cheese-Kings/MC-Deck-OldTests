# Setup Card Data Objectives
scoreboard objectives add cardHealth dummy
scoreboard objectives add cardAttack dummy
scoreboard objectives add cardDefence dummy
scoreboard objectives add cardSpeed dummy
scoreboard objectives add cardIDs dummy

# Setup Debug Scoreboard
scoreboard objectives add Debug dummy
scoreboard players add first_time_load_completed Debug 0

# Setup other Scoreboards
scoreboard objectives add click_carrot minecraft.used:minecraft.carrot_on_a_stick

# Install Card Stats
function #mc_deck:install_card_stats

# Run card detection
execute if score first_time_load_completed Debug matches 0 run schedule function #mc_deck:detect_card 5t

# Scedule the Daily Gift
execute if score first_time_load_completed Debug matches 0 run schedule function mc_deck:daily_gift 1d

# Installation Completion
execute if score first_time_load_completed Debug matches 0 run tellraw @a ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" MC Deck","color":"gold"},{"text":" datapack is loaded!","color":"aqua"},{"text":"\n"},{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" First time load completed!","color":"green"}]
execute if score first_time_load_completed Debug matches 0 run scoreboard players set first_time_load_completed Debug 1