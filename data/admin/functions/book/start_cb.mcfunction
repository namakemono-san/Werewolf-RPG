## 付与
    give @s command_block{display:{Name:'[{"text":"ゲーム開始","italic":false,"color":"green"},{"text":"コマンドブロック","italic":false,"color":"white"}]'},BlockEntityTag:{Command:"/execute if score start temporary matches 0 run function #core:start"}}

## リセット
    scoreboard players set @s options 0
    scoreboard players enable @s options