## 拡張機能設定
    item replace entity @s enderchest.0 with stone_axe{display:{Name:'[{"text":"人狼RPG（再現） ","italic":false,"color":"red"},{"text":"var1.0.0","italic":false,"color":"aqua"}]'},Unbreakable:1b,HideFlags:63,Enchantments:[{}],NoStack:1,Menu:1b}
    item modify entity @s enderchest.0 mwr:click/click_expanded


## 役職人数設定
    item replace entity @s enderchest.10 with paper{display:{Name:'{"text":"役職人数","italic":false,"color":"white"}'},NoStack:11,Menu:1b}
    item modify entity @s enderchest.10 mwr:transactions
    item modify entity @s enderchest.10 mwr:click/click_info


## 取引設定
    item replace entity @s enderchest.11 with emerald{display:{Name:'{"text":"取引設定","italic":false,"color":"white"}'},NoStack:12,Menu:1b}
    item modify entity @s enderchest.11 mwr:click/click_info


## スケルトン設定（未）
    item replace entity @s enderchest.3 with lime_stained_glass_pane{display:{Name:'{"text":"+1%","italic":false,"color":"white"}'},NoStack:4,Menu:1b}
    item replace entity @s enderchest.21 with red_stained_glass_pane{display:{Name:'{"text":"-1%","italic":false,"color":"white"}'},NoStack:22,Menu:1b}

    item replace entity @s enderchest.12 with bone{display:{Name:'{"text":"スケルトン設定","italic":false,"color":"white"}'},NoStack:13,Menu:1b}
    item modify entity @s enderchest.12 mwr:skeleton
    item modify entity @s enderchest.12 mwr:click/click_get


## 時間設定
    item replace entity @s enderchest.4 with lime_stained_glass_pane{display:{Name:'{"text":"+30秒","italic":false,"color":"white"}'},NoStack:5,Menu:1b}
    item replace entity @s enderchest.22 with red_stained_glass_pane{display:{Name:'{"text":"-30秒","italic":false,"color":"white"}'},NoStack:23,Menu:1b}

    item replace entity @s enderchest.13 with clock{display:{Name:'{"text":"時間設定","italic":false,"color":"white"}'},NoStack:14,Menu:1b}
    execute if score hour settings matches 1 if score first_day_sec settings matches 0 if score one_day_sec settings matches 0 run item modify entity @s enderchest.13 mwr:hour/hour_select_first
    execute if score hour settings matches 1 if score first_day_sec settings matches 30 if score one_day_sec settings matches 0 run item modify entity @s enderchest.13 mwr:hour/hour_select_first_and_first_30
    execute if score hour settings matches 1 if score first_day_sec settings matches 0 if score one_day_sec settings matches 30 run item modify entity @s enderchest.13 mwr:hour/hour_select_first_and_one_30
    execute if score hour settings matches 1 if score first_day_sec settings matches 30 if score one_day_sec settings matches 30 run item modify entity @s enderchest.13 mwr:hour/hour_select_first_and_all_30
    execute if score hour settings matches 2 if score first_day_sec settings matches 0 if score one_day_sec settings matches 0 run item modify entity @s enderchest.13 mwr:hour/hour_select_one
    execute if score hour settings matches 2 if score first_day_sec settings matches 30 if score one_day_sec settings matches 0 run item modify entity @s enderchest.13 mwr:hour/hour_select_one_and_first_30
    execute if score hour settings matches 2 if score first_day_sec settings matches 0 if score one_day_sec settings matches 30 run item modify entity @s enderchest.13 mwr:hour/hour_select_one_and_one_30
    execute if score hour settings matches 2 if score first_day_sec settings matches 30 if score one_day_sec settings matches 30 run item modify entity @s enderchest.13 mwr:hour/hour_select_one_and_all_30
    item modify entity @s enderchest.13 mwr:click/click_change


## ニックネーム設定（未）
    item replace entity @s enderchest.14 with name_tag{display:{Name:'{"text":"ニックネーム設定","italic":false,"color":"white"}'},NoStack:15,Menu:1b}
    item modify entity @s enderchest.14 mwr:click/click_info


## 観戦設定（未）
    item replace entity @s enderchest.15 with spyglass{display:{Name:'{"text":"観戦設定","italic":false,"color":"white"}'},NoStack:16,Menu:1b}
    execute if score log settings matches 0 run item modify entity @s enderchest.15 mwr:spectator/spectator_log_false
    execute if score log settings matches 1 run item modify entity @s enderchest.15 mwr:spectator/spectator_log_true
    item modify entity @s enderchest.15 mwr:click/click_info


## 管理アイテム
    item replace entity @s enderchest.16 with chest{display:{Name:'{"text":"管理アイテム","italic":false,"color":"white"}'},NoStack:17,Menu:1b}
    item modify entity @s enderchest.16 mwr:click/click_info
