## 切り替え
    execute as @a[tag=op] at @s run function mwr:system/settings/enderchest/pages/clear
    execute as @a[tag=op] at @s run function mwr:system/settings/enderchest/pages/main
    scoreboard players set @s menu_page 0

## リセット
    advancement revoke @s only mwr:open