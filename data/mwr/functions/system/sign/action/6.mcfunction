## クリックした人
    tag @s add clicked

## 昼の場合
    execute if score hour temporary matches 0 unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] if score @s fortune_teller_heart matches 1.. run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text":"昼に占うことは出来ません"}]
    execute if score hour temporary matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text":"昼に騎士の加護は使用できません"}]

## 占い
    execute if score hour temporary matches 1 unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] if score @s fortune_teller_heart matches 1.. if score @s fortune_teller_heart_used matches 1 run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text":"占いは一夜につき一回のみです"}]
    execute if score hour temporary matches 1 unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] if score @s fortune_teller_heart matches 1.. unless score @s fortune_teller_heart_used matches 1 as @a[scores={PlayerID=6}] run function mwr:sign/system/fortune_teller_heart

## 騎士の加護
    execute if score hour temporary matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] unless entity @s[scores={PlayerID=6}] as @a[scores={PlayerID=6}] run function mwr:sign/system/the_blessing_of_knighthood

## リセット
    tag @s remove clicked