execute as @a[scores={providence=0}] run effect give @s minecraft:glowing 60 1 true
execute as @a[scores={providence=1..}] run scoreboard players set @s providence 0
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:sunflower"}}]