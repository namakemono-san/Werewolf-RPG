## 音
    playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

## 追加＆更新
    execute if score percent skeleton matches 1..100 run scoreboard players remove percent skeleton 1
    function mwr:system/settings/enderchest/skeleton_percent

## 切り替え
    function mwr:system/settings/enderchest/pages/clear
    function mwr:system/settings/enderchest/pages/main