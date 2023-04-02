item replace entity @s enderchest.0 with feather{display:{Name:'{"text":"戻る","italic":false,"color":"white"}'},NoStack:1,Menu:1b}
item modify entity @s enderchest.0 mwr:click/click_back

item replace entity @s enderchest.10 with command_block{display:{Name:'[{"text":"ゲーム開始","italic":false,"color":"green"},{"text":"コマンドブロック","italic":false,"color":"white"}]'},NoStack:11,Menu:1b}
item modify entity @s enderchest.10 mwr:click/click_get

item replace entity @s enderchest.11 with oak_sign{display:{Name:'{"text":"プレイヤー看板","italic":false,"color":"green"}',Lore:['{"text":"占いや騎士の加護で使用する看板","color":"gray","italic":false}','{"text":"ゲーム開始前から署名できる","color":"gray","italic":false}']},NoStack:12,Menu:1b}
item modify entity @s enderchest.11 mwr:click/click_get

item replace entity @s enderchest.12 with crossbow{display:{Name:'{"text":"スポナーランチャー","color":"green","italic":false}',Lore:['{"text":"着弾した地点にスケルトンポイントを設置する","color":"gray","italic":false}','{"text":"すでに設置されていた場合は削除する","color":"gray","italic":false}']},HideFlags:63,Charged:1b,ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],NoStack:13,Menu:1b}
item modify entity @s enderchest.12 mwr:click/click_get

item replace entity @s enderchest.13 with armor_stand{display:{Name:'[{"text":"戦闘","italic":false,"color":"green"},{"text":"村人スポーン","italic":false,"color":"white"}]'},NoStack:14,Menu:1b}
item modify entity @s enderchest.13 mwr:click/click_get

item replace entity @s enderchest.14 with armor_stand{display:{Name:'[{"text":"補助","italic":false,"color":"green"},{"text":"村人スポーン","italic":false,"color":"white"}]'},NoStack:15,Menu:1b}
item modify entity @s enderchest.14 mwr:click/click_get

item replace entity @s enderchest.15 with armor_stand{display:{Name:'{"text":"ゲームスポーン設定","italic":false,"color":"green"}',Lore:['{"text":"以下の場合にテレポートされる座標を設定する","color":"gray","italic":false}','{"text":" ・ログインしたとき","color":"gray","italic":false}','{"text":" ・ゲーム中に死亡したとき","color":"gray","italic":false}','{"text":" ・管理本でｹﾞｰﾑﾓｰﾄﾞをｽﾍﾟｸﾃｲﾀｰから変更したとき","color":"gray","italic":false}','{"text":"既に設定されている座標に置くと削除できる","color":"gray","italic":false}']},NoStack:16,Menu:1b}
item modify entity @s enderchest.15 mwr:click/click_get

item replace entity @s enderchest.16 with writable_book{display:{Name:'[{"text":"人狼RPG ","italic":false,"color":"red"},{"text":"ニックネーム設定（未実装）","italic":false,"color":"white"}]',Lore:['','[{"text":"この本につけた","italic":false,"color":"gray"},{"text":"タイトル","italic":false,"underlined":true,"color":"white"},{"text":"が自分のニック","italic":false,"color":"gray"}]','{"text":"ネームとして設定される","italic":false,"color":"gray"}','[{"text":"人狼RPG","italic":false,"color":"red"},{"text":"のゲーム中で表示される名前は","italic":false,"color":"gray"}]','{"text":"全てこれで設定したニックネームになる","italic":false,"color":"gray"}']},NoStack:17,Menu:1b}
item modify entity @s enderchest.16 mwr:click/click_get