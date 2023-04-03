scoreboard players reset @s PlayerID

## PlayerIDの割り当て
    execute unless entity @a[scores={PlayerID=14}] run scoreboard players set @s PlayerID 14
    execute unless entity @a[scores={PlayerID=13}] run scoreboard players set @s PlayerID 13
    execute unless entity @a[scores={PlayerID=12}] run scoreboard players set @s PlayerID 12
    execute unless entity @a[scores={PlayerID=11}] run scoreboard players set @s PlayerID 11
    execute unless entity @a[scores={PlayerID=10}] run scoreboard players set @s PlayerID 10
    execute unless entity @a[scores={PlayerID=9}] run scoreboard players set @s PlayerID 9
    execute unless entity @a[scores={PlayerID=8}] run scoreboard players set @s PlayerID 8
    execute unless entity @a[scores={PlayerID=7}] run scoreboard players set @s PlayerID 7
    execute unless entity @a[scores={PlayerID=6}] run scoreboard players set @s PlayerID 6
    execute unless entity @a[scores={PlayerID=5}] run scoreboard players set @s PlayerID 5
    execute unless entity @a[scores={PlayerID=4}] run scoreboard players set @s PlayerID 4
    execute unless entity @a[scores={PlayerID=3}] run scoreboard players set @s PlayerID 3
    execute unless entity @a[scores={PlayerID=2}] run scoreboard players set @s PlayerID 2
    execute unless entity @a[scores={PlayerID=1}] run scoreboard players set @s PlayerID 1

## 看板の変更
    execute as @s if score @s PlayerID matches 14 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=14}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/14"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 13 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=13}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/13"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 12 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=12}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/12"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 11 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=11}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/11"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 10 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=10}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/10"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 9 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=9}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/9"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 8 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=8}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/8"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 7 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=7}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/7"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 6 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=6}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/6"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 5 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=5}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/5"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 4 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=4}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/4"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 3 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=3}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/3"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 2 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=2}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/2"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}
    execute as @s if score @s PlayerID matches 1 run data merge block ~ ~ ~ {Text2:'{"selector":"@a[scores={PlayerID=1}]","color":"black","italic":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function mwr:system/sign/action/1"}}',Text4:'{"text":"< 右ボタン >","color":"black","italic":false}'}

## 音
    execute as @s at @s run playsound minecraft:ui.button.click master @s ~ ~ ~

## 防具立てを設置
    execute as @s if score @s PlayerID matches 14 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_14
    execute as @s if score @s PlayerID matches 13 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_13
    execute as @s if score @s PlayerID matches 12 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_12
    execute as @s if score @s PlayerID matches 11 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_11
    execute as @s if score @s PlayerID matches 10 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_10
    execute as @s if score @s PlayerID matches 9 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_9
    execute as @s if score @s PlayerID matches 8 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_8
    execute as @s if score @s PlayerID matches 7 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_7
    execute as @s if score @s PlayerID matches 6 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_6
    execute as @s if score @s PlayerID matches 5 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_5
    execute as @s if score @s PlayerID matches 4 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_4
    execute as @s if score @s PlayerID matches 3 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_3
    execute as @s if score @s PlayerID matches 2 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_2
    execute as @s if score @s PlayerID matches 1 run execute if block ~ ~ ~ #signs run function mwr:system/sign/set_armor/player_1

## 表示
    execute as @a[scores={PlayerID=14}] run loot replace entity @e[type=armor_stand,tag=PlayerID14] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=13}] run loot replace entity @e[type=armor_stand,tag=PlayerID13] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=12}] run loot replace entity @e[type=armor_stand,tag=PlayerID12] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=11}] run loot replace entity @e[type=armor_stand,tag=PlayerID11] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=10}] run loot replace entity @e[type=armor_stand,tag=PlayerID10] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=9}] run loot replace entity @e[type=armor_stand,tag=PlayerID9] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=8}] run loot replace entity @e[type=armor_stand,tag=PlayerID8] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=7}] run loot replace entity @e[type=armor_stand,tag=PlayerID7] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=6}] run loot replace entity @e[type=armor_stand,tag=PlayerID6] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=5}] run loot replace entity @e[type=armor_stand,tag=PlayerID5] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=4}] run loot replace entity @e[type=armor_stand,tag=PlayerID4] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=3}] run loot replace entity @e[type=armor_stand,tag=PlayerID3] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=2}] run loot replace entity @e[type=armor_stand,tag=PlayerID2] armor.head loot mwr:player_head
    execute as @a[scores={PlayerID=1}] run loot replace entity @e[type=armor_stand,tag=PlayerID1] armor.head loot mwr:player_head