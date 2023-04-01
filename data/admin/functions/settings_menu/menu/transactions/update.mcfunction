## 音
    playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.5

## 切り替え
    function admin:settings_menu/pages/clear
    function admin:settings_menu/pages/main

## 更新
    function mwr:store/battle/update
    function mwr:store/auxiliary/update

## ページ番号
    scoreboard players set @s menu_page 0