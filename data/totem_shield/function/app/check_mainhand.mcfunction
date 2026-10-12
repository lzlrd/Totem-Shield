advancement revoke @s only totem_shield:check_mainhand

data modify storage totem_shield:tmp args.UUID set from entity @s UUID

data modify storage totem_shield:tmp args.totem_shield.item_name set from entity @s SelectedItem.components."minecraft:item_name"
data modify storage totem_shield:tmp args.totem_shield.enchantments set from entity @s SelectedItem.components."minecraft:enchantments"
data modify storage totem_shield:tmp args.totem_shield.damage set from entity @s SelectedItem.components."minecraft:damage"

function totem_shield:app/shield/store_data with storage totem_shield:tmp args

tag @s remove totem_shield.offhand
tag @s add totem_shield.mainhand