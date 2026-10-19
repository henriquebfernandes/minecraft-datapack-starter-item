# This function is used to give the starter item to players when they join the game for the first time.
scoreboard players set @s starter_item 1
$item replace entity @s weapon.offhand with $(id) $(count)
$item modify entity @s weapon.offhand {"type":"minecraft:set_components","components":$(components)}