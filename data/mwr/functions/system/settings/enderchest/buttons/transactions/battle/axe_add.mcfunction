## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加
    execute if score werewolf_axe price matches 0..63 run scoreboard players add werewolf_axe price 1

## 切り替え
    function mwr:ettings_menu/pages/clear
    function mwr:system/settings/enderchest/pages/transactions/battle