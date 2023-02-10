## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 切り替え
    execute if score hour settings matches 1 run scoreboard players set hour settings 9
    execute if score hour settings matches 10 run scoreboard players set hour settings 0
    scoreboard players add hour settings 1

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/main