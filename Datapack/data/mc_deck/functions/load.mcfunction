# Setup Card Data Objectives
scoreboard objectives add cardHealth dummy
scoreboard objectives add cardAttack dummy
scoreboard objectives add cardDefence dummy
scoreboard objectives add cardSpeed dummy

# Setup Debug Scoreboard
scoreboard objectives add Debug dummy
scoreboard players add first_time_load_completed Debug 0
# Current Verison
scoreboard players add current_version_major Debug 0
scoreboard players set current_version_major Debug 0
scoreboard players add current_version_minor Debug 0
scoreboard players set current_version_minor Debug 1

# Setup other Scoreboards [Currently Not Required, Saving For Later Feature]
scoreboard objectives add click_carrot minecraft.used:minecraft.carrot_on_a_stick

# Install Card Stats
function #mc_deck:install_card_stats

# Run card detection
execute if score first_time_load_completed Debug matches 0 run schedule function #mc_deck:detect_card 5t

# Scedule the Daily Gift
execute if score first_time_load_completed Debug matches 0 run schedule function mc_deck:daily_gift 1d

# Installation Completion
tellraw @a ["",{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" MC Deck","color":"gold"},{"text":" datapack is loaded!","color":"aqua"},{"text":"\n"},{"text":"[Debug]:","bold":true,"color":"yellow"},{"text":" First time load completed!","color":"green"}]
# Mark first time load as completed
execute if score first_time_load_completed Debug matches 0 run scoreboard players set first_time_load_completed Debug 1