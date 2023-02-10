## 取得
    scoreboard players set max skeleton 0
    execute as @e[type=minecraft:armor_stand,tag=skeleton_spawner] run scoreboard players add max skeleton 1

## 計算
    scoreboard players operation pre_max skeleton = max skeleton
    scoreboard players operation max skeleton *= percent skeleton
    scoreboard players operation max skeleton /= #100 Constant