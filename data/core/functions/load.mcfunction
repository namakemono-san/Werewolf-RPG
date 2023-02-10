## 開始中の場合停止
    execute if score start temporary matches 1 run function core:reset

## 変数宣言
    #define storage werewolf:
    #define storage oh_my_dat:

## ボスバーの初期設定
    bossbar add timer "timer"
    bossbar set timer color yellow
    bossbar set timer visible false
    bossbar set timer style notched_6

## スコアボードの初期設定
    scoreboard objectives add items trigger
    scoreboard objectives add options trigger

    scoreboard objectives add price dummy
    scoreboard objectives add divide dummy
    scoreboard objectives add settings dummy
    scoreboard objectives add PlayerID dummy
    scoreboard objectives add temporary dummy
    scoreboard objectives add menu_page dummy
    scoreboard objectives add death deathCount

    scoreboard objectives add Constant dummy
    function core:constant

    scoreboard objectives add lance dummy
    scoreboard objectives add axe_use dummy
    scoreboard objectives add tianxue_use dummy
    scoreboard objectives add stan_grenade dummy
    scoreboard objectives add fortune_teller_heart dummy
    scoreboard objectives add fortune_teller_heart_used dummy
    scoreboard objectives add the_blessing_of_knighthood dummy
    scoreboard objectives add tianxue minecraft.dropped:minecraft.paper
    scoreboard objectives add spirit_medium minecraft.dropped:minecraft.gunpowder
    scoreboard objectives add providence minecraft.dropped:minecraft.sunflower
    scoreboard objectives add stan_grenade_use minecraft.used:minecraft.snowball
    scoreboard objectives add accomplice minecraft.dropped:minecraft.end_crystal

    scoreboard objectives add health health
    scoreboard objectives add pre_health dummy

    scoreboard objectives add skeleton dummy
    scoreboard objectives add skeleton_attack dummy
    scoreboard objectives add skeleton_attacked dummy

## 初期値
    scoreboard players enable @a items
    scoreboard players enable @a options

    scoreboard players set @a menu_page 0
    execute unless score spyglass settings matches 0.. run scoreboard players set spyglass settings 1
    execute as @a unless score @s skeleton_attack matches 0.. run scoreboard players set @s skeleton_attack 2

    execute unless score werewolf divide matches 0.. run scoreboard players set werewolf divide 1
    execute unless score vampire divide matches 0.. run scoreboard players set vampire divide 0
    execute unless score accomplice divide matches 0.. run scoreboard players set accomplice divide 0
    execute unless score wolf_possession divide matches 0.. run scoreboard players set wolf_possession divide 0

    scoreboard players set first_day settings 600
    scoreboard players set one_day settings 2400
    scoreboard players set date temporary 0
    scoreboard players set hour temporary 0
    scoreboard players set timer temporary 0
    scoreboard players set start temporary 0
    scoreboard players set deaths temporary 0

## ゲームルールの変更
    gamerule keepInventory true
    gamerule showDeathMessages false
    gamerule doMobSpawning false
    gamerule doTraderSpawning false
    gamerule doWardenSpawning false
    gamerule doDaylightCycle false
    gamerule doWeatherCycle false

## チームの初期設定
    team add Werewolf "人狼"
    team modify Werewolf collisionRule never
    team modify Werewolf nametagVisibility never
    team modify Werewolf seeFriendlyInvisibles false
    team add Accomplice "共犯者"
    team modify Accomplice collisionRule never
    team modify Accomplice nametagVisibility never
    team modify Accomplice seeFriendlyInvisibles false
    team add Vampire "吸血鬼"
    team modify Vampire collisionRule never
    team modify Vampire nametagVisibility never
    team modify Vampire seeFriendlyInvisibles false
    team add Villager "村人"
    team modify Villager collisionRule never
    team modify Villager nametagVisibility never
    team modify Villager seeFriendlyInvisibles false
    team add Wolf_Possession "狼憑き"
    team modify Wolf_Possession collisionRule never
    team modify Wolf_Possession nametagVisibility never
    team modify Wolf_Possession seeFriendlyInvisibles false