# check points before + deal with ammo + check for item in inventory
# if they have a pistol dont charge for bullet and give pistol
scoreboard players remove @p Score 3000
execute as @p unless data entity @s Inventory[{"id":"cgm:grenade_launcher"}] run give @s cgm:grenade_launcher{AmmoCount: 1, Attachments: {Stock: {id: "cgm:light_stock", Count: 1b}}}
give @p cgm:grenade 64
# change ammo type