## 初期化
    execute if score start temporary matches 1 run function mwr:reset
    datapack disable "file/Werewolf-RPG"
    datapack disable "file/Werewolf-RPG.zip"

## ボスバーの削除
    bossbar remove mwr:timer

## スコアボードの削除
    scoreboard objectives remove items
    scoreboard objectives remove options
    scoreboard objectives remove price
    scoreboard objectives remove divide
    scoreboard objectives remove settings
    scoreboard objectives remove PlayerID
    scoreboard objectives remove temporary
    scoreboard objectives remove menu_page
    scoreboard objectives remove death
    scoreboard objectives remove Constant
    scoreboard objectives remove lance
    scoreboard objectives remove axe_use
    scoreboard objectives remove tianxue_use
    scoreboard objectives remove stan_grenade
    scoreboard objectives remove fortune_teller_heart
    scoreboard objectives remove fortune_teller_heart_used
    scoreboard objectives remove the_blessing_of_knighthood
    scoreboard objectives remove tianxue
    scoreboard objectives remove spirit_medium
    scoreboard objectives remove providence
    scoreboard objectives remove stan_grenade_use
    scoreboard objectives remove accomplice
    scoreboard objectives remove health
    scoreboard objectives remove pre_health
    scoreboard objectives remove skeleton
    scoreboard objectives remove skeleton_attack
    scoreboard objectives remove skeleton_attacked

## チームの削除
    team remove Werewolf
    team remove Accomplice
    team remove Vampire
    team remove Villager
    team remove Wolf_Possession

## 削除完了ログ
    tellraw @a ["",{"text":" ======================================== "}]
    tellraw @a ["",{"text":"   I have uninstalled this Datapack."}]
    tellraw @a ["",{"text":" ======================================== "}]