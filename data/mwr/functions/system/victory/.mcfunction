## 村人の勝利条件
    execute if score vampire divide matches 0 run execute unless entity @a[team=Werewolf,tag=!deaths] run function mwr:system/victory/villager
    execute if score vampire divide matches 1.. run execute if entity @a[team=Vampire,tag=deaths] unless entity @a[team=Werewolf,tag=!deaths] run function mwr:system/victory/villager

## 人狼の勝利条件
    execute if score vampire divide matches 0 run execute unless entity @a[team=Villager,tag=!deaths] run function mwr:system/victory/werewolf
    execute if score vampire divide matches 1.. run execute if entity @a[team=Vampire,tag=deaths] unless entity @a[team=Villager,tag=!deaths] run function mwr:system/victory/werewolf

## 吸血鬼の勝利条件
    execute if score vampire divide matches 1.. run execute unless entity @a[team=Werewolf,tag=!deaths] run function mwr:system/victory/vampire
    execute if score vampire divide matches 1.. run execute unless entity @a[team=Villager,tag=!deaths] run function mwr:system/victory/vampire