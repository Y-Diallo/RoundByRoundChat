# check points before + deal with ammo + check for item in inventory
# if they have a pistol dont charge for bullet and give pistol
scoreboard players remove @p Score 3500
execute as @p unless data entity @s Inventory[{"id":"cgm:mini_gun"}] run give @s cgm:mini_gun{AmmoCount: 100, Attachments: {}}
give @p cgm:basic_bullet 256