## 初期化
    ### Kill
        kill @e[type=minecraft:skeleton]
        kill @e[type=minecraft:item]
    ### プレイヤーの初期化
        execute as @a run attribute @s minecraft:generic.max_health base set 20
        execute as @a run attribute @s minecraft:generic.movement_speed base set 0.1
        gamemode adventure @a
        tag @a remove deaths
        clear @a
        effect clear @a
    ### 時間初期化
        time set noon

## スコアボードの初期化
    scoreboard players set @a the_blessing_of_knighthood 0
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

    scoreboard players set date temporary 0
    scoreboard players set hour temporary 0
    scoreboard players set timer temporary 0
    scoreboard players set start temporary 0
    scoreboard players set deaths temporary 0

## タイトルの初期化
    bossbar set mwr:timer name {"text":""}
    bossbar set mwr:timer visible false