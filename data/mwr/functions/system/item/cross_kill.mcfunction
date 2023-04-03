## 吸血鬼だったら
    execute as @s[team=Vampire] at @s run particle minecraft:end_rod ~ ~1.25 ~ 0.1 0.1 0.1 0.15 100
    execute as @s[team=Vampire] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.5 2
    execute as @s[team=Vampire] at @s run kill @s

## リセット
    advancement revoke @s only mwr:cross_kill