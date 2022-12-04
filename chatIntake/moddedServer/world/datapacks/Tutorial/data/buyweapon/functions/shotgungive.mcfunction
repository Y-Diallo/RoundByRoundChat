# check points before + deal with ammo + check for item in inventory
# if they have a pistol dont charge for bullet and give pistol
scoreboard players remove @p Score 1250
execute as @p unless data entity @s Inventory[{"id":"cgm:shotgun"}] run give @s cgm:shotgun{AmmoCount: 8, Attachments: {Stock: {id: "cgm:light_stock", Count: 1b}}}
give @p cgm:shell 64
# change ammo type