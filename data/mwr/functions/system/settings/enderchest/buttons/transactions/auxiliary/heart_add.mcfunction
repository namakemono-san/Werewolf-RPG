## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加
    execute if score fortune_teller_heart price matches 0..63 run scoreboard players add fortune_teller_heart price 1

## 切り替え
    function mwr:system/settings/enderchest/pages/clear
    function mwr:system/settings/enderchest/pages/transactions/auxiliary