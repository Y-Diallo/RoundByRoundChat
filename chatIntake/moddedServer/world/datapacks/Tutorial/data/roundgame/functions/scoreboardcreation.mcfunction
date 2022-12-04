scoreboard objectives add pastCurrentBossMobs dummy
scoreboard objectives add pastRoundKills dummy
scoreboard objectives add Factor dummy
scoreboard objectives add killDifferential dummy
scoreboard objectives add bossDifferential dummy
scoreboard objectives add Score dummy
scoreboard objectives add currentMobs dummy
scoreboard objectives add currentRoundMobsLeft dummy
scoreboard objectives add TotalRoundMobs dummy
scoreboard objectives add roundEnd dummy
scoreboard objectives add currentBossMobs dummy
scoreboard objectives add currentTotalMobs dummy
scoreboard objectives add autoStart trigger
scoreboard objectives add mobStuck trigger
scoreboard objectives add roundKill minecraft.custom:minecraft.mob_kills
scoreboard objectives add Deaths deathCount
scoreboard objectives add Kills minecraft.custom:minecraft.mob_kills
scoreboard objectives add Health health
scoreboard objectives setdisplay sidebar Score
scoreboard objectives setdisplay list Kills
scoreboard objectives setdisplay belowName Health
scoreboard players set Count roundEnd 0
scoreboard players set Count pastCurrentBossMobs 0
scoreboard players set Count pastRoundKills 0
scoreboard players set killValue Factor 50
scoreboard players set bossKillValue Factor 150
# scoreboard players set Count TotalRoundMobs 15