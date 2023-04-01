## 指定されている秒数にする
    scoreboard players operation timer temporary = one_day settings

## 現在の時間帯を検知
    execute if score hour temporary matches 0 run schedule function mwr:system/timer/night 2t
    execute if score hour temporary matches 1 run schedule function mwr:system/timer/day 2t