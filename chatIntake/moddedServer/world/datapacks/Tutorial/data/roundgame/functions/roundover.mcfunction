# execute as yman234 run say amognus
execute if score Count roundEnd matches ..0 run scoreboard players set Count roundEnd 1
# set roundEnd back to a number when it matters
scoreboard players set @a roundKill 0
scoreboard players set @a pastRoundKills 0
scoreboard players set @a pastCurrentBossMobs 0
scoreboard players enable yman234 autoStart
execute if score yman234 autoStart matches 1.. run say ROUND OVER AUTO
execute unless score yman234 autoStart matches 1.. run say ROUND OVER
scoreboard players set yman234 autoStart 0
