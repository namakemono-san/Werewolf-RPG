## 召喚
    summon minecraft:villager ~ ~ ~ {VillagerData:{level:5,profession:"minecraft:librarian",type:"minecraft:plains"},Tags:["auxiliary"],NoAI:true,Silent:true,Invulnerable:true,CustomName:'["",{"text":"補助","color":"green","italic":false},{"text":"","color":"green","italic":false}]',CustomNameVisible:true}
    execute as @e[type=minecraft:villager,tag=auxiliary,tag=!check] at @s run tp @e[type=minecraft:armor_stand,tag=auxiliary_villager,sort=nearest,limit=1]
    execute as @e[type=minecraft:villager,tag=auxiliary,tag=!check] run tag @s add check
    kill @s