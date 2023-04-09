## 村人の取引アイテムの更新
    function mwr:system/store/battle/update
    function mwr:system/store/auxiliary/update

## 役職付与 & メッセージ
    function mwr:system/role/set_roles
    function mwr:system/role/send_roles

## 初期化
    ### 削除
        clear @a
        effect clear @a
        tag @a remove deaths

    ### エフェクト変更
        execute as @a run attribute @s minecraft:generic.max_health base set 40
        execute as @a if score speed settings matches 0 run attribute @s minecraft:generic.movement_speed base set 0.1
        execute as @a if score speed settings matches 1 run attribute @s minecraft:generic.movement_speed base set 0.13
        execute as @a if score speed settings matches 2 run attribute @s minecraft:generic.movement_speed base set 0.15
        execute as @a if score speed settings matches 3 run attribute @s minecraft:generic.movement_speed base set 0.18

        effect give @a minecraft:instant_health 1 40 true
        effect give @a minecraft:saturation 1 40 true

    ### 初期アイテム
        item replace entity @a container.8 with minecraft:cooked_beef 5
        execute if score spyglass settings matches 1 run item replace entity @a container.0 with minecraft:spyglass

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

        execute as @a unless score @s skeleton_attack matches 0.. run scoreboard players set @s skeleton_attack 2

        scoreboard players set date temporary 0
        scoreboard players set hour temporary 0
        scoreboard players set deaths temporary 0

        scoreboard players operation timer temporary = first_day settings
        execute store result bossbar mwr:timer max run scoreboard players get one_day settings

        bossbar set mwr:timer name {"text":"初日 昼"}
        bossbar set mwr:timer players @a
        bossbar set mwr:timer color yellow
        bossbar set mwr:timer visible true

        scoreboard players reset * en_route
        scoreboard players set @a en_route 1

        scoreboard players set start temporary 1

    ### ゲームモード変更
        gamemode adventure @a[gamemode=!spectator]