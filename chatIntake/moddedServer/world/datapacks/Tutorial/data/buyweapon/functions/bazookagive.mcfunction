# check points before + deal with ammo + check for item in inventory
# if they have a pistol dont charge for bullet and give pistol
scoreboard players remove @p Score 3000
execute as @p unless data entity @s Inventory[{"id":"cgm:bazooka"}] run give @s cgm:bazooka{AmmoCount: 1, Attachments: {}}
give @p cgm:missile 64
# change ammo type