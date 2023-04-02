## 戻る
    item replace entity @s enderchest.0 with feather{display:{Name:'{"text":"戻る","italic":false,"color":"white"}'},NoStack:1,Menu:1b}
    item modify entity @s enderchest.0 mwr:click/click_back

## 望遠鏡付与
    execute if score spyglass settings matches 0 run item replace entity @s enderchest.10 with spyglass{display:{Name:'{"text":"拡張機能：望遠鏡付与","italic":false,"color":"white"}',Lore:['{"text":"無効","color":"red","italic":false}']},NoStack:11,Menu:1b}
    execute if score spyglass settings matches 1 run item replace entity @s enderchest.10 with spyglass{display:{Name:'{"text":"拡張機能：望遠鏡付与","italic":false,"color":"white"}',Lore:['{"text":"有効","color":"green","italic":false}']},NoStack:11,Menu:1b}
    item modify entity @s enderchest.10 mwr:extension_spyglass
    item modify entity @s enderchest.10 mwr:click/click_info

## 基礎移動速度上昇
    execute if score speed settings matches 0 run item replace entity @s enderchest.11 with feather{display:{Name:'{"text":"拡張機能：移動速度上昇","italic":false,"color":"white"}',Lore:['{"text":"無効","color":"blue","italic":false}']},NoStack:11,Menu:1b}
    execute if score speed settings matches 1 run item replace entity @s enderchest.11 with feather{display:{Name:'{"text":"拡張機能：移動速度上昇","italic":false,"color":"white"}',Lore:['{"text":"１段階","color":"blue","italic":false}']},NoStack:11,Menu:1b}
    execute if score speed settings matches 2 run item replace entity @s enderchest.11 with feather{display:{Name:'{"text":"拡張機能：移動速度上昇","italic":false,"color":"white"}',Lore:['{"text":"２段階","color":"blue","italic":false}']},NoStack:11,Menu:1b}
    execute if score speed settings matches 3 run item replace entity @s enderchest.11 with feather{display:{Name:'{"text":"拡張機能：移動速度上昇","italic":false,"color":"white"}',Lore:['{"text":"３段階","color":"blue","italic":false}']},NoStack:11,Menu:1b}