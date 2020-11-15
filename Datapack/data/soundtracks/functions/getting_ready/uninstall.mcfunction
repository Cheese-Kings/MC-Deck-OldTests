tag @e remove nbs_GettingRea
scoreboard objectives remove nbs_GettingRea
scoreboard objectives remove nbs_GettingRea_t
datapack disable "Getting Ready"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"Getting Ready","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]