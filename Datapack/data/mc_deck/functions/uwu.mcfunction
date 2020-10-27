# Reset Score
scoreboard players reset @s click_carrot

## Detect what card it is
# Creeper
execute as @p if data entity @s SelectedItem.tag.down run say hi

execute at @a[sort=nearest,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{IsMcDeckCard:1,cardID:1}}]}] run tellraw @a {"rawtext":[{"text":"§e####################"},{"text":"§r§§"},{"text":"§9~~~"},{"text":"§b Creeper"},{"text":"§9 ~~~"},{"text":"§r§§"},{"text":"§cHealth:"},{"text":"§r creeper->cardHealth§§"},{"text":"§cDamage:"},{"text":"§r creeper->cardAttack§§"},{"text":"§cDefence:"},{"text":"§r creeper->cardDefence§§"},{"text":"§cSpeed:"},{"text":"§r creeper->cardSpeed§§§§COMMON§§"},{"text":"§e####################"}]}