scoreboard players set Count currentMobs 0
scoreboard players set Count currentBossMobs 0
scoreboard players set Count currentTotalMobs 0
scoreboard players set Count currentRoundMobsLeft 0
# trigger overrides
scoreboard players enable yman234 mobStuck
execute if score yman234 mobStuck matches 1.. run function roundgame:mobstuck
scoreboard players set yman234 mobStuck 0
# add hashtags later on
# justice is the team for all players
execute as @e[team=!justice,tag=roundMob] run scoreboard players add Count currentMobs 1
execute as @e[team=!justice,tag=roundMob,tag=bossMob] run scoreboard players add Count currentBossMobs 1
scoreboard players operation Count currentTotalMobs += Count currentBossMobs
scoreboard players operation Count currentTotalMobs += Count currentMobs
# totalroundmobs set by program
scoreboard players operation Count currentRoundMobsLeft = Count TotalRoundMobs
execute as @a[team=justice] run scoreboard players operation Count currentRoundMobsLeft -= @s roundKill
# point system
function roundgame:point
# checks for zero mobs
execute if score Count currentRoundMobsLeft matches ..0 run function roundgame:roundover
# justice auto adding command
team join justice @a[team=]

scoreboard players operation Count pastCurrentBossMobs = Count currentBossMobs
effect give @a minecraft:night_vision 10 1