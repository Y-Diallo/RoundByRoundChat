# check points before + deal with ammo + check for item in inventory
# if they have a pistol dont charge for bullet and give pistol
scoreboard players remove @p Score 1500
execute as @p unless data entity @s Inventory[{"id":"cgm:assault_rifle"}] run give @s cgm:assault_rifle{AmmoCount: 40, Attachments: {Barrel: {id: "cgm:silencer", Count: 1b}, Scope: {id: "cgm:short_scope", Count: 1b}, Stock: {id: "cgm:tactical_stock", Count: 1b}, Under_Barrel: {id: "cgm:light_grip", Count: 1b}}}
give @p cgm:basic_bullet 192
# change ammo type