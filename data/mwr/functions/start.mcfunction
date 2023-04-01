## 人数と役職設定とバージョンの確認
    ### 人数の確認
        execute store result score player temporary run execute if entity @a
        execute if score player temporary matches ..3 run function mwr:system/error/player_shortage

    ### バージョンの確認
        execute if score player temporary matches 3.. run execute store result score version temporary run data get entity @p DataVersion
        execute if score player temporary matches 3.. run execute unless predicate mwr:version/1.19.3 run function mwr:system/error/different_version

    ### 役職設定の確認
        execute if predicate mwr:version/1.19.3 if score player temporary matches 3.. run scoreboard players operation pos temporary += werewolf divide
        execute if predicate mwr:version/1.19.3 if score player temporary matches 3.. run scoreboard players operation pos temporary += vampire divide
        execute if predicate mwr:version/1.19.3 if score player temporary matches 3.. run scoreboard players operation pos temporary += accomplice divide
        execute if predicate mwr:version/1.19.3 if score player temporary matches 3.. run scoreboard players operation pos temporary += wolf_possession divide
        execute if predicate mwr:version/1.19.3 if score player temporary matches 3.. run execute if score player temporary < pos temporary run function mwr:system/error/positional_num_discrepancy

    ### 上記のチェックを通過したら開始
        execute if predicate mwr:version/1.19.3 if score player temporary > pos temporary if score player temporary matches 3.. run function mwr:system/start