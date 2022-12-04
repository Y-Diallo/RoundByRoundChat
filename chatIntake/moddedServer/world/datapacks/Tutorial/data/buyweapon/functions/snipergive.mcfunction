# check points before + deal with ammo + check for item in inventory
# if they have a pistol dont charge for bullet and give pistol
scoreboard players remove @p Score 2500
execute as @p unless data entity @s Inventory[{"id":"cgm:heavy_rifle"}] run give @s cgm:heavy_rifle{AmmoCount: 4, Attachments: {Barrel: {id: "cgm:silencer", Count: 1b}, Scope: {id: "cgm:medium_scope", Count: 1b}, Under_Barrel: {id: "cgm:specialised_grip", Count: 1b}}}
give @p cgm:advanced_bullet 128
# change ammo type