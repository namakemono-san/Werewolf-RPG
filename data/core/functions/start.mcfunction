## 村人の取引アイテムの更新
    function core:store/battle/update
    function core:store/auxiliary/update

## 役職付与 & メッセージ
    function core:game/set_roles
    function core:game/send_roles

## 初期化
    ### アイテム＆エフェクト削除
        clear @a
        effect clear @a

    ### 体力変更
        execute as @a run attribute @s minecraft:generic.max_health base set 40
        effect give @a minecraft:instant_health 1 40 true
        effect give @a minecraft:saturation 1 20 true

    tag @a remove deaths

    ### 初期アイテム
        item replace entity @a container.8 with minecraft:cooked_beef 5
        execute if score spyglass settings matches 10 run item replace entity @a container.0 with minecraft:spyglass

    ### 初期値
        scoreboard players set @a death 0
        scoreboard players set @a lance 0
        scoreboard players set @a axe_use 0
        scoreboard players set @a tianxue 0
        scoreboard players set @a providence 0
        scoreboard players set @a accomplice 0
        scoreboard players set @a tianxue_use 0
        scoreboard players set @a spirit_medium 0
        scoreboard players set @a stan_grenade_use 0
        scoreboard players set @a fortune_teller_heart 0
        scoreboard players set @a fortune_teller_heart_used 0
        scoreboard players set @a the_blessing_of_knighthood 0

        scoreboard players set date temporary 0
        scoreboard players set hour temporary 0
        scoreboard players set deaths temporary 0

        scoreboard players operation timer temporary = first_day settings
        execute store result bossbar minecraft:timer max run scoreboard players get one_day settings

        bossbar set timer name {"text":"初日 昼"}
        bossbar set timer players @a
        bossbar set timer color yellow
        bossbar set timer visible true

        scoreboard players set start temporary 1

    ### ゲームモード変更
        gamemode adventure @a