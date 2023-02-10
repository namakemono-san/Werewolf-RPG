## 初期化
    kill @e[type=skeleton]
    clear @a
    time set noon
    tag @a remove deaths
    execute as @a run attribute @s minecraft:generic.max_health base set 20

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
    bossbar set timer name {"text":""}
    bossbar set timer visible false