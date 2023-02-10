## 切り替え
    execute as @a[tag=op] at @s run function admin:settings_menu/pages/clear
    execute as @a[tag=op] at @s run function admin:settings_menu/pages/main

## ページ番号
    scoreboard players set @s menu_page 0