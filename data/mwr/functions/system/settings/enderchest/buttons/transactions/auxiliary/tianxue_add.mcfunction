## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加
    execute if score spellbook_of_tianxue price matches 0..63 run scoreboard players add spellbook_of_tianxue price 1

## 切り替え
    function mwr:system/settings/enderchest/pages/clear
    function mwr:system/settings/enderchest/pages/transactions/auxiliary