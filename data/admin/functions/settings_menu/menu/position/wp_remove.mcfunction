## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加
    execute if score wolf_possession divide matches 1..10 run scoreboard players remove wolf_possession divide 1

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/position/