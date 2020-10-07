@echo off
title MC Deck Card Generator

echo Welcome to the MC Deck Card Generator!
echo.
pause
cls

set /p cardName=Enter Card Name (e.g. Creeper): 
set /p cardNameWithoutCaps=Enter Card Name Without Capitals Or Spaces (Instead of spaces use _): 
set /p cardHealth=Enter Card Health Value: 
set /p cardAttack=Enter Card Attack Value: 
set /p cardSpeed=Enter Card Speed Value: 
set /p cardRarity=Enter Card Rarity (COMMON/RARE/EPIC): 
set /p cardID=Enter Card ID (e.g. 1, 34, 8463829678876): 

(
echo # %cardName% Card Give Command
echo give @s knowledge_book{display:{Name:'[{"text":"%cardName%","italic":false,"color":"dark_purple","underlined":true}]',Lore:['[{"text":"Health:","italic":false,"color":"white"},{"score":{"name":"%cardNameWithoutCaps%","objective":"cardHealth"}},{"text":"","color":"dark_purple"}]','[{"text":"Attack:","italic":false,"color":"white"},{"text":" ","color":"dark_purple"},{"score":{"name":"%cardNameWithoutCaps%","objective":"cardAttack"},{"text":"","color":"dark_purple"}]','[{"text":"Speed:","italic":false,"color":"white"},{"text":" ","color":"dark_purple"},{"score":{"name":"%cardNameWithoutCaps%","objective":"cardSpeed"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"%cardRarity% Card","italic":false,"color":"green","bold":true},{"text":"","italic":false,"color":"dark_purple","bold":false}]','[{"text":"MC Trading Card Game","italic":true,"color":"dark_blue"}]']},Enchantments:[{}],HideFlags:5,CustomModelData:%cardID%,IsMcDeckCard:1} 1
)> give_%cardNameWithoutCaps%.mcfunction

(
echo ## %cardName% Card Stats
echo.
echo # Health
echo scoreboard players set %cardNameWithoutCaps% cardHealth %cardHealth%
echo # Attack Damage
echo scoreboard players set %cardNameWithoutCaps% cardAttack %cardAttack%
echo # Speed
echo scoreboard players set %cardNameWithoutCaps% cardSpeed %cardSpeed%
echo # ID
echo scoreboard players set %cardNameWithoutCaps% cardIDs %cardID%
)> %cardNameWithoutCaps%.mcfunction

echo.
echo Card Successfully Generated! :)
echo.
pause