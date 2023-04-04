## クリックした人
    tag @s add clicked

## 看板の色変更
    scoreboard players set player2 change_sign 0
    execute if score start temporary matches 0 if score player2 change_sign matches 0 if block ~ ~ ~ minecraft:oak_sign run function mwr:system/sign/system/change_sign/player_2/oak_spruce
    execute if score start temporary matches 0 if score player2 change_sign matches 0 if block ~ ~ ~ minecraft:spruce_sign run function mwr:system/sign/system/change_sign/player_2/spruce_birch
    execute if score start temporary matches 0 if score player2 change_sign matches 0 if block ~ ~ ~ minecraft:birch_sign run function mwr:system/sign/system/change_sign/player_2/birch_jungle
    execute if score start temporary matches 0 if score player2 change_sign matches 0 if block ~ ~ ~ minecraft:jungle_sign run function mwr:system/sign/system/change_sign/player_2/jungle_acacia
    execute if score start temporary matches 0 if score player2 change_sign matches 0 if block ~ ~ ~ minecraft:acacia_sign run function mwr:system/sign/system/change_sign/player_2/acacia_dark
    execute if score start temporary matches 0 if score player2 change_sign matches 0 if block ~ ~ ~ minecraft:dark_oak_sign run function mwr:system/sign/system/change_sign/player_2/dark_mangrove
    execute if score start temporary matches 0 if score player2 change_sign matches 0 if block ~ ~ ~ minecraft:mangrove_sign run function mwr:system/sign/system/change_sign/player_2/mangrove_crimson
    execute if score start temporary matches 0 if score player2 change_sign matches 0 if block ~ ~ ~ minecraft:crimson_sign run function mwr:system/sign/system/change_sign/player_2/crimson_warped
    execute if score start temporary matches 0 if score player2 change_sign matches 0 if block ~ ~ ~ minecraft:warped_sign run function mwr:system/sign/system/change_sign/player_2/warped_oak
    scoreboard players set player2 change_sign 0

    data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=2}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/2"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}

## 昼の場合
    execute if score start temporary matches 1 if score hour temporary matches 0 unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] if score @s fortune_teller_heart matches 1.. run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text":"昼に占うことは出来ません"}]
    execute if score start temporary matches 1 if score hour temporary matches 0 if entity @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text":"昼に騎士の加護は使用できません"}]

## 占い
    execute if score start temporary matches 1 if score hour temporary matches 1 unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] if score @s fortune_teller_heart matches 1.. if score @s fortune_teller_heart_used matches 1 run tellraw @s ["",{"text": "[","color":"red","italic":false,"bold":true},{"text":"人狼ＲＰＧ","color":"red","italic":false},{"text":"] ","color":"red","italic":false,"bold":true},{"text":"占いは一夜につき一回のみです"}]
    execute if score start temporary matches 1 if score hour temporary matches 1 unless entity @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] if score @s fortune_teller_heart matches 1.. unless score @s fortune_teller_heart_used matches 1 as @a[scores={PlayerID=2}] run function mwr:system/sign/system/fortune_teller_heart

## 騎士の加護
    execute if score start temporary matches 1 if score hour temporary matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:golden_horse_armor"}}] unless entity @s[scores={PlayerID=2}] as @a[scores={PlayerID=2}] run function mwr:system/sign/system/the_blessing_of_knighthood

## リセット
    tag @s remove clicked