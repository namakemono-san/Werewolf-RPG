## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加
    execute if score medium_ashes price matches 2..64 run scoreboard players remove medium_ashes price 1

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/transactions/auxiliary