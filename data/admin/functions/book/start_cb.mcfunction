## 付与
    give @s command_block{display:{Name:'{"text":"スタートコマンドブロック","color": "green"}'},BlockEntityTag:{Command:"/execute if score start temporary matches 0 run function #core:start"}}

## リセット
    scoreboard players set @s options 0
    scoreboard players enable @s options