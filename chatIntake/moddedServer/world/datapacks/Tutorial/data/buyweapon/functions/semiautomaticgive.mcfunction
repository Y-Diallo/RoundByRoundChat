# check points before + deal with ammo + check for item in inventory
# if they have a pistol dont charge for bullet and give pistol
scoreboard players remove @p Score 2000
execute as @p unless data entity @s Inventory[{"id":"cgm:rifle"}] run give @s cgm:rifle{AmmoCount: 10, Attachments: {Barrel: {id: "cgm:silencer", Count: 1b}, Scope: {id: "cgm:short_scope", Count: 1b}, Stock: {id: "cgm:tactical_stock", Count: 1b}, Under_Barrel: {id: "cgm:light_grip", Count: 1b}}}
give @p cgm:advanced_bullet 128
# change ammo type