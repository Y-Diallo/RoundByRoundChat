# coming into the function...
# past round kills is the number of kills in this round one tick ago
# roundKill is the number of kills in the round on this tick
# Score is the value of points in a player
# this function needs to calculate the new kills for each player and award points
execute as @a[team=justice] run scoreboard players operation @s killDifferential = @s roundKill
execute as @a[team=justice] run scoreboard players operation @s killDifferential -= @s pastRoundKills
execute as @a[team=justice] run scoreboard players operation @s killDifferential *= killValue Factor
execute as @a[team=justice] run scoreboard players operation @s Score += @s killDifferential
# and award even more points for bosses
scoreboard players operation Count bossDifferential = Count pastCurrentBossMobs
scoreboard players operation Count bossDifferential -= Count currentBossMobs
scoreboard players operation Count bossDifferential *= bossKillValue Factor
execute as @a[team=justice] run scoreboard players operation @s Score += Count bossDifferential
# last line (boss updating handled in tick.mcfunction)
execute as @a[team=justice] run scoreboard players operation @s pastRoundKills = @s roundKill