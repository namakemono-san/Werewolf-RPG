## 村人の勝利条件
    execute if score vampire divide matches 0 run execute unless entity @a[team=Werewolf,tag=!deaths] run function core:game/victory/villager
    execute if score vampire divide matches 1.. run execute if entity @a[team=Vampire,tag=deaths] unless entity @a[team=Werewolf,tag=!deaths] run function core:game/victory/villager

## 人狼の勝利条件
    execute if score vampire divide matches 0 run execute unless entity @a[team=Villager,tag=!deaths] run function core:game/victory/werewolf
    execute if score vampire divide matches 1.. run execute if entity @a[team=Vampire,tag=deaths] unless entity @a[team=Villager,tag=!deaths] run function core:game/victory/werewolf

## 吸血鬼の勝利条件
    execute if score vampire divide matches 1.. run execute unless entity @a[team=Werewolf,tag=!deaths] run function core:game/victory/vampire
    execute if score vampire divide matches 1.. run execute unless entity @a[team=Villager,tag=!deaths] run function core:game/victory/vampire