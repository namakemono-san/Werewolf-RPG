## 開始中の場合停止
    execute if score start temporary matches 1 run function mwr:reset

## 変数宣言
    #define storage mwr:

## ボスバーの初期設定
    bossbar add mwr:timer "timer"
    bossbar set mwr:timer color yellow
    bossbar set mwr:timer visible false
    bossbar set mwr:timer style notched_6

## スコアボードの初期設定
    scoreboard objectives add items trigger
    scoreboard objectives add options trigger

    scoreboard objectives add change_sign dummy "看板変更"
    scoreboard objectives add price dummy "価格設定"
    scoreboard objectives add divide dummy "役職設定"
    scoreboard objectives add settings dummy "設定"
    scoreboard objectives add PlayerID dummy "プレイヤー"
    scoreboard objectives add temporary dummy "一時的"
    scoreboard objectives add menu_page dummy "メニュー"
    scoreboard objectives add death deathCount "死亡数"

    function mwr:system/store/reset

    scoreboard objectives add Constant dummy

    scoreboard players set #20 Constant 20
    scoreboard players set #100 Constant 100
    scoreboard players set #1200 Constant 1200

    scoreboard objectives add lance dummy "怨念の槍"
    scoreboard objectives add axe_use dummy "人狼の斧の使用"
    scoreboard objectives add tianxue_use dummy "天啓の呪符の使用"
    scoreboard objectives add stan_grenade dummy "スタングレネード"
    scoreboard objectives add fortune_teller_heart dummy "占いの心"
    scoreboard objectives add fortune_teller_heart_used dummy "占いの心の使用"
    scoreboard objectives add the_blessing_of_knighthood dummy "騎士の加護"
    scoreboard objectives add tianxue minecraft.dropped:minecraft.paper "天啓の呪符の使用"
    scoreboard objectives add spirit_medium minecraft.dropped:minecraft.gunpowder "霊媒師の遺灰の使用"
    scoreboard objectives add providence minecraft.dropped:minecraft.sunflower "プロビデンスの眼光の使用"
    scoreboard objectives add stan_grenade_use minecraft.used:minecraft.snowball "スタングレネードの使用"
    scoreboard objectives add accomplice minecraft.dropped:minecraft.end_crystal "共犯者の目の使用"

    scoreboard objectives add health health "体力"
    scoreboard objectives add pre_health dummy "元体力"

    scoreboard objectives add skeleton dummy "スケルトン"
    scoreboard objectives add skeleton_attack dummy "スケルトン攻撃回数"
    scoreboard objectives add skeleton_attacked dummy "スケルトン攻撃された回数"

## 初期値
    ### トリガー
        scoreboard players enable @a items
        scoreboard players enable @a options

    ### 役職数
        execute unless score werewolf divide matches 0.. run scoreboard players set werewolf divide 1
        execute unless score vampire divide matches 0.. run scoreboard players set vampire divide 0
        execute unless score accomplice divide matches 0.. run scoreboard players set accomplice divide 0
        execute unless score wolf_possession divide matches 0.. run scoreboard players set wolf_possession divide 0

    ### 設定
        execute unless score spyglass settings matches 0.. run scoreboard players set @a menu_page 0
        execute as @a unless score @s skeleton_attack matches 0.. run scoreboard players set @s skeleton_attack 2
        execute unless score spyglass settings matches 0.. run scoreboard players set spyglass settings 1
        execute unless score speed settings matches 0.. run scoreboard players set speed settings 0
        execute unless score hour settings matches 0.. run scoreboard players set hour settings 1
        execute unless score first_day settings matches 0.. run scoreboard players set first_day settings 600
        execute unless score first_day_min settings matches 0.. run scoreboard players set first_day_min settings 0
        execute unless score first_day_sec settings matches 0.. run scoreboard players set first_day_sec settings 30
        execute unless score one_day settings matches 0.. run scoreboard players set one_day settings 2400
        execute unless score one_day_min settings matches 0.. run scoreboard players set one_day_min settings 2
        execute unless score one_day_sec settings matches 0.. run scoreboard players set one_day_sec settings 0

    ### 一時的
        scoreboard players set date temporary 0
        scoreboard players set hour temporary 1
        scoreboard players set timer temporary 0
        scoreboard players set start temporary 0
        scoreboard players set deaths temporary 0

## 設定変更
    ### ゲームルールの変更
        gamerule spawnRadius 0
        gamerule keepInventory true
        gamerule logAdminCommands false
        gamerule announceAdvancements false
        gamerule commandBlockOutput false
        gamerule showDeathMessages false
        gamerule doMobSpawning false
        gamerule doMobLoot false
        gamerule doTraderSpawning false
        gamerule doWardenSpawning false
        gamerule doDaylightCycle false
        gamerule doWeatherCycle false

    ### 初期設定
        time set day
        weather clear
        difficulty easy

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