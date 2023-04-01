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
    execute as @s if score @s PlayerID matches 14 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID14"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 13 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID13"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 12 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID12"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 11 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID11"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 10 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID10"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 9 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID9"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 8 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID8"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 7 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID7"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 6 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID6"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 5 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID5"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 4 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID4"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 3 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID3"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 2 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID2"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}
    execute as @s if score @s PlayerID matches 1 run execute if block ~ ~ ~ #signs run summon minecraft:armor_stand ~ ~-0.15 ~ {Tags:["PlayerID","PlayerID1"],Small:true,NoGravity:true,Silent:true,Invisible:true,DisabledSlots:4352}

## 向き変更
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=0] run tp @s ~ ~ ~ 0 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=1] run tp @s ~ ~ ~ 22.5 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=2] run tp @s ~ ~ ~ 45 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=3] run tp @s ~ ~ ~ 67.5 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=4] run tp @s ~ ~ ~ 90 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=5] run tp @s ~ ~ ~ 112.5 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=6] run tp @s ~ ~ ~ 135 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=7] run tp @s ~ ~ ~ 157.5 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=8] run tp @s ~ ~ ~ 180 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=9] run tp @s ~ ~ ~ 202.5 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=10] run tp @s ~ ~ ~ 225 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=11] run tp @s ~ ~ ~ 247.5 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=12] run tp @s ~ ~ ~ 270 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=13] run tp @s ~ ~ ~ 292.5 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=14] run tp @s ~ ~ ~ 315 0
    execute as @e[type=minecraft:armor_stand,tag=PlayerID] at @s if block ~ ~ ~ #signs[rotation=15] run tp @s ~ ~ ~ 337.5 0

## 変換
    schedule function mwr:system/sign/head 4t