## １減らす
    execute store result bossbar timer value run scoreboard players remove timer temporary 1
## ０になったら日数変更する
    execute if score timer temporary matches 0 run function core:timer/next