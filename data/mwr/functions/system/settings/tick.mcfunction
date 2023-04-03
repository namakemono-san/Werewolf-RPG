## エンダーチェスト
    ### 検知用
        execute as @a[tag=!op] at @s run function mwr:system/settings/enderchest/pages/remove

        execute as @a[tag=op] at @s if score @s menu_page matches 0 run function mwr:system/settings/enderchest/detections/main
        execute as @a[tag=op] at @s if score @s menu_page matches 1 run function mwr:system/settings/enderchest/detections/position
        execute as @a[tag=op] at @s if score @s menu_page matches 2 run function mwr:system/settings/enderchest/detections/transactions/
        execute as @a[tag=op] at @s if score @s menu_page matches 3 run function mwr:system/settings/enderchest/detections/transactions/battle
        execute as @a[tag=op] at @s if score @s menu_page matches 4 run function mwr:system/settings/enderchest/detections/transactions/auxiliary
        execute as @a[tag=op] at @s if score @s menu_page matches 5 run function mwr:system/settings/enderchest/detections/management
        execute as @a[tag=op] at @s if score @s menu_page matches 6 run function mwr:system/settings/enderchest/detections/extension
        execute as @a[tag=op] at @s unless score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:feather"}]}] run function mwr:system/settings/enderchest/buttons/main

    ### 取ったアイテムを消す
        execute as @a[tag=op] run clear @s #mwr:all{Menu:1b}


## 本
    ### trigger
        execute as @a[scores={items=1..}] run function mwr:system/settings/book/items
        execute as @a if score @s options matches 1 run function mwr:system/settings/book/start_cb
        execute as @a if score @s options matches 2 run function mwr:system/settings/book/store_as
        execute as @a if score @s options matches 3 run function mwr:system/settings/book/spawner_launcher
        execute as @a if score @s options matches 4 run function mwr:system/settings/book/player_sign
        execute as @a if score @s options matches 5 run function mwr:system/settings/book/player_spawn