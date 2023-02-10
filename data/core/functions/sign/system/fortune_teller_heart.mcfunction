## 使用不可能にする
    scoreboard players remove @a[tag=clicked] fortune_teller_heart 1
    scoreboard players set @a[tag=clicked] fortune_teller_heart_used 1

## サブタイトル
    title @a[tag=clicked] subtitle {"text":"占い結果"}

## 占い結果表示
    execute if entity @s[team=Werewolf] run title @a[tag=clicked] title {"text":"人狼","color": "dark_red","bold":true}
    execute if entity @s[team=Werewolf] run tellraw @a[tag=clicked] [{"text": "[","color":"red","bold":true},{"text":"人狼ＲＰＧ","color":"red","bold":false},{"text":"] ","color":"red","bold":true},{"selector":"@s","color":"white","bold":false},{"text":"：","color": "white","bold":true},{"text":"人狼","color": "dark_red","bold":true}]
    execute if entity @s[team=Accomplice] run title @a[tag=clicked] title {"text":"村人","color": "blue","bold":true}
    execute if entity @s[team=Accomplice] run tellraw @a[tag=clicked] [{"text": "[","color":"red","bold":true},{"text":"人狼ＲＰＧ","color":"red","bold":false},{"text":"] ","color":"red","bold":true},{"selector":"@s","color":"white","bold":false},{"text":"：","color": "white","bold":true},{"text":"村人","color": "blue","bold":true}]
    execute if entity @s[team=Vampire] run title @a[tag=clicked] title {"text":"吸血鬼","color": "purple","bold":true}
    execute if entity @s[team=Vampire] run tellraw @a[tag=clicked] [{"text": "[","color":"red","bold":true},{"text":"人狼ＲＰＧ","color":"red","bold":false},{"text":"] ","color":"red","bold":true},{"selector":"@s","color": "white","bold":false},{"text":"：","color": "white","bold":true},{"text":"吸血鬼","color": "purple","bold":true}]
    execute if entity @s[team=Villager] run title @a[tag=clicked] title {"text":"村人","color": "blue","bold":true}
    execute if entity @s[team=Villager] run tellraw @a[tag=clicked] [{"text": "[","color":"red","bold":true},{"text":"人狼ＲＰＧ","color":"red","bold":false},{"text":"] ","color":"red","bold":true},{"selector":"@s","color":"white","bold":false},{"text":"：","color": "white","bold":true},{"text":"村人","color": "blue","bold":true}]
    execute if entity @s[team=Wolf_Possession] run title @a[tag=clicked] title {"text":"人狼","color": "dark_red","bold":true}
    execute if entity @s[team=Wolf_Possession] run tellraw @a[tag=clicked] [{"text": "[","color":"red","bold":true},{"text":"人狼ＲＰＧ","color":"red","bold":false},{"text":"] ","color":"red","bold":true},{"selector":"@s","color":"white","bold":false},{"text":"：","color": "white","bold":true},{"text":"人狼","color": "dark_red","bold":true}]

## 天啓の呪符を使用している場合
    execute if score @s tianxue_use matches 1 run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 0.3 1
    execute if score @s tianxue_use matches 1 run title @s subtitle {"text":"あなたは占われた","color":"red"}
    execute if score @s tianxue_use matches 1 run title @s title {"text":"天啓","color": "gray"}
    execute if score @s tianxue_use matches 1 run tellraw @s [{"text": "[","color":"red","bold":true},{"text":"人狼ＲＰＧ","color":"red","bold":false},{"text":"] ","color":"red","bold":true},{"text":"天啓の呪符 の効果が発動しました","color":"white","bold":false}]