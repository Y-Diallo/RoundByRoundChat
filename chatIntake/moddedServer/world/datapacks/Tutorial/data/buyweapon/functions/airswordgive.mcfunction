# check points before + deal with ammo + check for item in inventory
# if they have a pistol dont charge for bullet and give pistol
execute as @p unless data entity @s Inventory[{"id":"elementalswords:air_sword"}] run scoreboard players remove @p Score 3000
execute as @p unless data entity @s Inventory[{"id":"elementalswords:air_sword"}] run give @s elementalswords:air_sword