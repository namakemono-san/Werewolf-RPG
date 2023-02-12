## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加
    execute if score spellbook_of_tianxue price matches 2..64 run scoreboard players remove spellbook_of_tianxue price 1

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/transactions/auxiliary