## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 切り替え
    execute if score hour settings matches 1 run scoreboard players set hour settings 102
    execute if score hour settings matches 2 run scoreboard players set hour settings 101
    scoreboard players remove hour settings 100

## 切り替え
    function mwr:system/settings/enderchest/pages/clear
    function mwr:system/settings/enderchest/pages/main