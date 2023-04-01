## エンダーチェスト
    ### 検知用
        execute as @a[tag=!op] at @s run function admin:settings_menu/pages/remove
        execute as @a[tag=op] at @s if score @s menu_page matches 0 run function admin:settings_menu/detection/main
        execute as @a[tag=op] at @s if score @s menu_page matches 10 run function admin:settings_menu/detection/position
        execute as @a[tag=op] at @s if score @s menu_page matches 11 run function admin:settings_menu/detection/transactions/
        execute as @a[tag=op] at @s if score @s menu_page matches 12 run function admin:settings_menu/detection/transactions/battle
        execute as @a[tag=op] at @s if score @s menu_page matches 13 run function admin:settings_menu/detection/transactions/auxiliary
        execute as @a[tag=op] at @s if score @s menu_page matches 17 run function admin:settings_menu/detection/management
        execute as @a[tag=op] at @s if score @s menu_page matches 18 run function admin:settings_menu/detection/extension
        execute as @a[tag=op] at @s unless score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:feather"}]}] run function admin:settings_menu/menu/main
    ### 取ったアイテムを消す
        execute as @a[tag=op] run clear @s minecraft:stone_axe{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:paper{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:emerald{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:bone{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:clock{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:name_tag{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:spyglass{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:chest{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:bow{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:heart_of_the_sea{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:command_block{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:oak_sign{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:crossbow{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:armor_stand{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:writable_book{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:feather{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:lime_stained_glass_pane{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:red_stained_glass_pane{Menu:1b}
        execute as @a[tag=op] run clear @s minecraft:black_stained_glass_pane{Menu:1b}


## 本
    ### trigger items
        execute as @a[scores={items=1..}] run function admin:items

    ### trigger options
        execute as @a if score @s options matches 1 run function admin:book/start_cb
        execute as @a if score @s options matches 2 run function admin:book/store_as
        execute as @a if score @s options matches 3 run function admin:book/spawner_launcher
        execute as @a if score @s options matches 4 run function admin:book/player_sign
        execute as @a if score @s options matches 5 run function admin:book/player_spawn