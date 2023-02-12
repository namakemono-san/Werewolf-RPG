## 初期設定
    title @a reset
    title @a subtitle {"text":"GAME START","color":"gold","bold":true,"underlined":true}

## 村人
    execute as @a[team=Villager] run title @s title {"text":"村人","color":"blue","bold":true}
    execute as @a[team=Villager] run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text": "あなたの役職："},{"text": "村人","color":"blue","bold":true}]

## 人狼
    execute as @a[team=Werewolf] run title @s title {"text":"人狼","color":"dark_red","bold":true}
    execute as @a[team=Werewolf] run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text": "あなたの役職："},{"text": "人狼","color":"dark_red","bold":true}]
    execute if score werewolf divide matches 2.. as @a[team=Werewolf] run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text": "仲間："},{"selector": "@a[team=Werewolf]","color":"white"}]

## 共犯者
    execute as @a[team=Accomplice] run title @s title {"text":"共犯者","color":"gray","bold":true}
    execute as @a[team=Accomplice] run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text": "あなたの役職："},{"text": "共犯者","color":"gray","bold":true}]

## 吸血鬼
    execute as @a[team=Vampire] run title @s title {"text":"吸血鬼","color":"purple","bold":true}
    execute as @a[team=Vampire] run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text": "あなたの役職："},{"text": "吸血鬼","color":"purple","bold":true}]

## 狼憑き
    execute as @a[team=Wolf_Possession] run title @s title {"text":"村人","color":"blue","bold":true}
    execute as @a[team=Wolf_Possession] run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text": "あなたの役職："},{"text": "村人","color":"blue","bold":true}]