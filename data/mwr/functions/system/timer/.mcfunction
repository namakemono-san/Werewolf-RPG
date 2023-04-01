## １減らす
    execute store result bossbar mwr:timer value run scoreboard players remove timer temporary 1
## ０になったら日数変更する
    execute if score timer temporary matches 0 run function mwr:system/timer/next