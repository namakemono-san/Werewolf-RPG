## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加
    execute if score vampire divide matches 0..9 run scoreboard players add vampire divide 1

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/position/