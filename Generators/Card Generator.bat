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
set /p cardDefence=Enter Card Defence Value: 
set /p cardSpeed=Enter Card Speed Value: 
set /p cardRarity=Enter Card Rarity (COMMON/RARE/EPIC/LEGENDARY): 
set /p cardID=Enter Card ID (e.g. 1, 34, 8463829678876): 

(
echo # %cardName% Card Give Command
echo give @s minecraft:carrot_on_a_stick{IsMcDeckCard:1,CustomModelData:1%cardID%,cardID:%cardID%} 1
)> give_%cardNameWithoutCaps%.mcfunction

echo.
echo Name=%cardName% name=%cardNameWithoutCaps% Health=%cardHealth% Attack=%cardAttack% Defence=%cardDefence% Speed=%cardSpeed% Rarity=%cardRarity% ID=%cardID%

cd ../Datapack
(
echo ## %cardName% Card Stats
echo.
echo # Health
echo scoreboard players set %cardNameWithoutCaps% cardHealth %cardHealth%
echo # Attack Damage
echo scoreboard players set %cardNameWithoutCaps% cardAttack %cardAttack%
echo # Defence
echo scoreboard players set %cardNameWithoutCaps% cardDefence %cardDefence%
echo # Speed
echo scoreboard players set %cardNameWithoutCaps% cardSpeed %cardSpeed%
echo # ID
echo scoreboard players set %cardNameWithoutCaps% cardIDs %cardID%
)> %cardNameWithoutCaps%.mcfunction

echo.
echo Card Successfully Generated! :)
echo.
pause