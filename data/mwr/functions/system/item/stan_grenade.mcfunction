execute as @e[type=snowball] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
scoreboard players add @e[type=minecraft:armor_stand,tag=stan_grenade] stan_grenade 1
execute as @e[type=armor_stand,tag=stan_grenade,scores={stan_grenade=1}] at @s run kill @e[type=minecraft:armor_stand,tag=stan_grenade,scores={stan_grenade=2},distance=..5]
execute as @e[type=armor_stand,tag=stan_grenade,scores={stan_grenade=2}] at @s run effect give @a[distance=..3] slowness 5 150 true
execute as @e[type=armor_stand,tag=stan_grenade,scores={stan_grenade=2}] at @s run effect give @a[distance=..3] blindness 5 150 true
execute as @e[type=armor_stand,tag=stan_grenade,scores={stan_grenade=2}] at @s run effect give @a[distance=..3] jump_boost 5 150 true
execute as @e[type=armor_stand,tag=stan_grenade,scores={stan_grenade=2}] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=stan_grenade,scores={stan_grenade=2}] at @s run particle minecraft:firework ~ ~ ~ 0.01 0.001 0.01 0.25 25 force
execute as @e[type=armor_stand,tag=stan_grenade,scores={stan_grenade=2}] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1
kill @e[type=armor_stand,tag=stan_grenade,scores={stan_grenade=5..}]