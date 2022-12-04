const commands = [
    {command: "/function streamcommands:explodejargon\n", name: "Explode Jargon"},
    {command: "sheep", name: "\"i hardly\"", hoard: true},
    {command: "/function streamcommands:sigma\n", name: "WHAT IS THAT MELODY"},
    {command: "/function streamcommands:widemobs\n", name: "wide mob"},
    {command: "/function streamcommands:widehomies\n", name: "HES THICC"},
    {command: "/function streamcommands:smallmobs\n", name: "small mob"},
    {command: "/function streamcommands:smallplayers\n", name: "get smol"},
    //less rares 8
    {command: "/execute at **name** run summon greekfantasy:cyclops ^ ^2 ^2\n", name: "Cyclops Wumble"},
    {command: "/effect give **name** minecraft:levitation 60\n", name: "Floaty boi"},
    {command: "/give **name** elementalswords:air_sword\n", name: "AIR SWORD"},
    {command: "/give **name** elementalswords:fire_sword\n", name: "FIRE SWORD"},
    {command: "/give **name** elementalswords:water_sword\n", name: "WATER SWORD"},
    {command: "/execute at **name** run summon greekfantasy:cerberus ^ ^2 ^2\n", name: "Cerberus"},
    {command: "/execute at **name** run summon greekfantasy:talos ^ ^2 ^2\n", name: "Talos Boss"},
    {command: "/execute at **name** run summon greekfantasy:hydra ^ ^2 ^2\n", name: "Hydra"},
    {command: "/execute at **name** run summon greekfantasy:bronze_bull ^ ^2 ^2\n", name: "Bronze Bull Of Legend"},
    //rares consider beacon 20
    {command: "", name: "DOUBLE THE MOBS", special:true},
    {command: "", name: "Iron Armor", special:true},
    {command: "", name: "Ok Bow", special:true},
    {command: "/effect give @a greekfantasy:stunned 10 1\n", name: "Stunned"},
    {command: "", name: "Skip Round", special:true},
    {command: "", name: "DOUBLE THE BOSSES", special:true},
    {command: "/execute as @e[tag=roundMob] run data merge entity @s {Health:0.5}\n", name: "INSTA KILL"},
    {command: "", name: "Friendly Fire (temp)", special:true},
    {command: "/scale set pehkui:health 2 @a\n", name: "DOUBLE Hearts"},

];
module.exports = commands;