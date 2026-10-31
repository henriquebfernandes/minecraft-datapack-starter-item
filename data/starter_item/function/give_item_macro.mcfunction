scoreboard players set @s starter_item 1
$item replace entity @s weapon.offhand with $(id) $(count)
$item modify entity @s weapon.offhand {type:"minecraft:set_components",components:$(components)}
