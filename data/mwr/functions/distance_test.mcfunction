scoreboard objectives add Distance dummy

## プレイヤーの座標
    execute store result score Player_PosX Distance run data get entity @s Pos[0]
    execute store result score Player_PosZ Distance run data get entity @s Pos[2]

## 矢の座標
    execute as @e[type=arrow,sort=nearest,limit=1] at @s store result score Arrow_PosX Distance run data get entity @s Pos[0]
    execute as @e[type=arrow,sort=nearest,limit=1] at @s store result score Arrow_PosZ Distance run data get entity @s Pos[2]

## 計算

    scoreboard players operation PosX Distance = Player_PosX Distance
    scoreboard players operation PosX Distance -= Arrow_PosX Distance
    scoreboard players operation PosX Distance *= PosX Distance

    scoreboard players operation PosZ Distance = Player_PosZ Distance
    scoreboard players operation PosZ Distance -= Arrow_PosZ Distance
    scoreboard players operation PosZ Distance *= PosZ Distance

    scoreboard players operation Pos Distance = PosX Distance
    scoreboard players operation Pos Distance += PosZ Distance

    execute store result storage mwr: in float 1 run scoreboard players get Pos Distance

## sqrt by AiMath
    scoreboard objectives add Sqrt dummy

    scoreboard players set R Sqrt -1
    data modify storage mwr: out set value 0d

    execute store result score V Sqrt run data get storage mwr: in 1
    execute if score V Sqrt matches ..999999 store result score V Sqrt run data get storage mwr: in 100
    execute if score V Sqrt matches ..999999 store result score V Sqrt run data get storage mwr: in 10000
    execute if score V Sqrt matches ..999999 store result score V Sqrt run data get storage mwr: in 1000000
    execute if score V Sqrt matches ..999999 store result score V Sqrt run data get storage mwr: in 100000000
    execute if score V Sqrt matches ..999999 store result score V Sqrt run data get storage mwr: in 10000000000
    execute if score V Sqrt matches ..999999 store result score V Sqrt run data get storage mwr: in 1000000000000
    execute if score V Sqrt matches ..999999 store result score V Sqrt run data get storage mwr: in 100000000000000
    execute if score V Sqrt matches ..999999 store result score V Sqrt run data get storage mwr: in 10000000000000000

    execute if score V Sqrt matches 1000000.. run scoreboard players set R Sqrt -1000
    execute if score V Sqrt matches 4000000.. run scoreboard players set R Sqrt -2000
    execute if score V Sqrt matches 9000000.. run scoreboard players set R Sqrt -3000
    execute if score V Sqrt matches 16000000.. run scoreboard players set R Sqrt -4000
    execute if score V Sqrt matches 25000000.. run scoreboard players set R Sqrt -5000
    execute if score V Sqrt matches 36000000.. run scoreboard players set R Sqrt -6000
    execute if score V Sqrt matches 49000000.. run scoreboard players set R Sqrt -7000
    execute if score V Sqrt matches 64000000.. run scoreboard players set R Sqrt -8000
    execute if score V Sqrt matches 81000000.. run scoreboard players set R Sqrt -9000

    scoreboard players operation _ Sqrt = R Sqrt
    scoreboard players operation _ Sqrt *= R Sqrt
    scoreboard players operation _ Sqrt -= V Sqrt
    execute store result storage mwr:_ Sqrt int 0.005 run scoreboard players operation _ Sqrt /= R Sqrt
    execute store result score _ Sqrt run data get storage mwr:_ Sqrt 100
    execute store result score R2 Sqrt run scoreboard players operation R Sqrt -= _ Sqrt

    scoreboard players operation R2 Sqrt *= R Sqrt
    execute if score R2 Sqrt > V Sqrt run scoreboard players add R Sqrt 100

    scoreboard players operation _ Sqrt = R Sqrt
    scoreboard players operation _ Sqrt *= R Sqrt
    scoreboard players operation _ Sqrt -= V Sqrt
    execute store result storage mwr:_ Sqrt int 0.05 run scoreboard players operation _ Sqrt /= R Sqrt
    execute store result score _ Sqrt run data get storage mwr:_ Sqrt 10
    execute store result score R2 Sqrt run scoreboard players operation R Sqrt -= _ Sqrt

    scoreboard players operation R2 Sqrt *= R Sqrt
    execute if score R2 Sqrt > V Sqrt run scoreboard players add R Sqrt 10

    scoreboard players operation _ Sqrt = R Sqrt
    scoreboard players operation _ Sqrt *= R Sqrt
    scoreboard players operation _ Sqrt -= V Sqrt
    execute store result storage mwr:_ Sqrt int 0.5 run scoreboard players operation _ Sqrt /= R Sqrt
    execute store result score _ Sqrt run data get storage mwr:_ Sqrt 1
    execute store result score R2 Sqrt run scoreboard players operation R Sqrt -= _ Sqrt

    scoreboard players operation R2 Sqrt *= R Sqrt
    execute if score R2 Sqrt > V Sqrt run scoreboard players add R Sqrt 1

    execute store result score V Sqrt run data get storage mwr: in 1
    execute if score V Sqrt matches 1000000..100000000 store result storage mwr: out double -1 run scoreboard players get R Sqrt
    execute if score V Sqrt matches 10000..999999 store result storage mwr: out double -0.1 run scoreboard players get R Sqrt
    execute if score V Sqrt matches 100..9999 store result storage mwr: out double -0.01 run scoreboard players get R Sqrt
    execute if score V Sqrt matches 1..99 store result storage mwr: out double -0.001 run scoreboard players get R Sqrt

    execute store result score V Sqrt run data get storage mwr: in 100000000
    execute if score V Sqrt matches 1000000..99999999 store result storage mwr: out double -0.0001 run scoreboard players get R Sqrt
    execute if score V Sqrt matches 10000..999999 store result storage mwr: out double -0.00001 run scoreboard players get R Sqrt
    execute if score V Sqrt matches 100..9999 store result storage mwr: out double -0.000001 run scoreboard players get R Sqrt
    execute if score V Sqrt matches 1..99 store result storage mwr: out double -0.0000001 run scoreboard players get R Sqrt

    scoreboard players reset * Sqrt
    scoreboard objectives remove Sqrt

    execute store result storage mwr: out int 1 run data get storage mwr: out

    tellraw @a ["",{"text":"弓"},{"nbt":"out","storage":"mwr:"}]

scoreboard players reset * Distance
scoreboard objectives remove Distance