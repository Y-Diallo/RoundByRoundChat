scoreboard players set Count currentMobs 0
# add hastag later on
# justice is the team for all players
execute as @e[team=!justice,tag=roundMob] run scoreboard players add Count currentMobs 1
execute as @e[team=!justice,tag=bossMob] run scoreboard players add Count currentBossMobs 1
# an outside command will set totalRoundMobCount something like below
# scoreboard players set Count totalRoundMobCount 10
scoreboard players operation Count roundMobsLeft = Count totalRoundMobCount
scoreboard players operation Count roundMobsLeft -= Count currentMobs
execute if score Count roundMobsLeft <= value 0 run function roundgame:roundover
# justice auto adding command
team join justice @a[team=]
# trigger overrides
scoreboard players enable yman234 mobStuck
execute if score yman234 mobStuck >= value 1 run function roundgame:mobstuck
scoreboard players set yman234 mobStuck 0