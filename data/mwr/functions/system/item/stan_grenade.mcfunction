scoreboard players add @e[type=minecraft:armor_stand,tag=stan_grenade] stan_grenade 1
execute as @a[scores={stan_grenade_use=1}] run tag @s add stan_grenade
execute at @e[type=minecraft:snowball] unless block ~ ~-0.5 ~ air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~ ~0.5 ~ air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~ ~ ~0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~ ~ ~-0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~0.5 ~ ~ air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~-0.5 ~ ~ air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~0.5 ~ ~0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~0.5 ~ ~-0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~-0.5 ~ ~-0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~-0.5 ~ ~0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~0.5 ~0.5 ~0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~-0.5 ~0.5 ~0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~0.5 ~-0.5 ~0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~0.5 ~0.5 ~-0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~-0.5 ~0.5 ~0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~0.5 ~-0.5 ~0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~0.5 ~0.5 ~-0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~-0.5 ~-0.5 ~0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~0.5 ~-0.5 ~-0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~-0.5 ~0.5 ~-0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute at @e[type=minecraft:snowball] unless block ~-0.5 ~-0.5 ~-0.5 air run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute as @e[type=minecraft:snowball] at @s run execute at @a[distance=..2.15,scores={stan_grenade_use=0}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["stan_grenade"],Invisible:true,Invulnerable:true,NoGravity:true,Silent:true}
execute as @e[type=minecraft:snowball] at @s if entity @e[type=minecraft:armor_stand,distance=..1] run kill @s
execute at @e[type=minecraft:armor_stand,tag=stan_grenade] run effect give @a[distance=..3] slowness 5 150 true
execute at @e[type=minecraft:armor_stand,tag=stan_grenade] run effect give @a[distance=..3] blindness 5 150 true
execute at @e[type=minecraft:armor_stand,tag=stan_grenade] run effect give @a[distance=..3] jump_boost 5 150 true
execute at @e[type=minecraft:armor_stand,tag=stan_grenade,scores={stan_grenade=1}] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute at @e[type=minecraft:armor_stand,tag=stan_grenade,scores={stan_grenade=1}] run particle minecraft:firework ~ ~ ~ 0.01 0.001 0.01 0.25 25 force
execute at @e[type=minecraft:armor_stand,tag=stan_grenade,scores={stan_grenade=1}] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1
execute at @e[type=minecraft:armor_stand,tag=stan_grenade,scores={stan_grenade=1}] run execute as @e[scores={stan_grenade_use=1..}] run scoreboard players set @s stan_grenade_use 0
execute as @a[tag=stan_grenade] run tag @s remove stan_grenade
kill @e[type=minecraft:armor_stand,scores={stan_grenade=2..}]