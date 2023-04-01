## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 切り替え
    execute if score speed settings matches 0 run scoreboard players set speed settings 101
    execute if score speed settings matches 1 run scoreboard players set speed settings 102
    execute if score speed settings matches 2 run scoreboard players set speed settings 103
    execute if score speed settings matches 3 run scoreboard players set speed settings 100
    scoreboard players remove speed settings 100

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/extension