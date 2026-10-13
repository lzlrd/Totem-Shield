advancement revoke @s only totem_shield:mainhand/check

data modify storage totem_shield:tmp args.UUID set from entity @s UUID

data modify storage totem_shield:tmp args.totem_shield.item_name set from entity @s SelectedItem.components."minecraft:item_name"
data modify storage totem_shield:tmp args.totem_shield.enchantments set from entity @s SelectedItem.components."minecraft:enchantments"
data modify storage totem_shield:tmp args.totem_shield.damage set from entity @s SelectedItem.components."minecraft:damage"

execute unless data entity @s SelectedItem.components."minecraft:enchantments" run data modify storage totem_shield:tmp args.totem_shield.enchantments set value {}
execute unless data entity @s SelectedItem.components."minecraft:damage" run data modify storage totem_shield:tmp args.totem_shield.damage set value 0

function totem_shield:app/shield/store_data with storage totem_shield:tmp args

tag @s remove totem_shield.offhand
tag @s add totem_shield.mainhand

data remove storage totem_shield:tmp args