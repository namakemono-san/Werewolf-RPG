item replace entity @s enderchest.0 with feather{display:{Name:'{"text":"戻る","italic":false,"color":"white"}'},NoStack:1,Menu:1b}
item modify entity @s enderchest.0 admin:click/click_back

execute if score spyglass settings matches 1 run item replace entity @s enderchest.10 with spyglass{display:{Name:'{"text":"拡張機能：望遠鏡付与","italic":false,"color":"white"}',Lore:['{"text":"無効","color":"red","italic":false}']},NoStack:11,Menu:1b}
execute if score spyglass settings matches 10 run item replace entity @s enderchest.10 with spyglass{display:{Name:'{"text":"拡張機能：望遠鏡付与","italic":false,"color":"white"}',Lore:['{"text":"有効","color":"green","italic":false}']},NoStack:11,Menu:1b}
item modify entity @s enderchest.10 admin:extension_spyglass
item modify entity @s enderchest.10 admin:click/click_info