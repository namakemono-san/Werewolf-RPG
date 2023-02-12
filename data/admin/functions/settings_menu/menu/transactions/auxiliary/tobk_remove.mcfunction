## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加
    execute if score the_blessing_of_knighthood price matches 2..64 run scoreboard players remove the_blessing_of_knighthood price 1

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/transactions/auxiliary