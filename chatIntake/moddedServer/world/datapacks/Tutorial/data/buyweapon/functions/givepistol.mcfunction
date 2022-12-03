# check points before + deal with ammo + check for item in inventory
# if they have a pistol dont charge for bullet and give pistol
scoreboard players remove @p Score 500
execute as @p unless data entity @s Inventory[{"id":"cgm:pistol"}] run give @s cgm:pistol{AmmoCount: 16, Attachments: {Barrel: {id: "cgm:silencer", Count: 1b}}}
give @p cgm:basic_bullet 192