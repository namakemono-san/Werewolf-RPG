## 吸血鬼だったら
    execute as @s[team=Vampire] run particle minecraft:item nether_star ^ ^1.25 ^0.5 0.15 0.15 0.15 0 15
    execute as @s[team=Vampire] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.5 2
    execute as @s[team=Vampire] run kill @s

## リセット
    advancement revoke @s only mwr:cross_kill