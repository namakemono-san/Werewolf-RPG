## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加
    execute if score first_day settings matches 601..6000 run scoreboard players remove first_day settings 600
    function admin:hour

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/main