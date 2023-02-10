## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加＆更新
    execute if score percent skeleton matches 0..99 run scoreboard players add percent skeleton 1
    function admin:percent

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/main