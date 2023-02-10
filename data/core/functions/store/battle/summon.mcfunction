## 召喚
    summon minecraft:villager ~ ~ ~ {VillagerData:{level:5,profession:"minecraft:fletcher",type:"minecraft:plains"},Tags:["battle"],NoAI:true,Silent:true,Invulnerable:true,CustomName:'["",{"text":"戦闘","color":"green","italic":false},{"text":"","color":"green","italic":false}]',CustomNameVisible:true}
    execute as @e[type=minecraft:villager,tag=battle,tag=!check] at @s run tp @e[type=minecraft:armor_stand,tag=battle_villager,sort=nearest,limit=1]
    execute as @e[type=minecraft:villager,tag=battle,tag=!check] run tag @s add check
    kill @s