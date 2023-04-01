## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 切り替え
    execute if score spyglass settings matches 0 run scoreboard players set spyglass settings 101
    execute if score spyglass settings matches 1 run scoreboard players set spyglass settings 100
    scoreboard players remove spyglass settings 100

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/extension