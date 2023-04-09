## 削除
    execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star"}}] at @s run particle minecraft:item nether_star ^ ^1.25 ^0.5 0.15 0.15 0.15 0 15
    execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star"}}] at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 0.5
    execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star"}}] at @s run tag @s add kill_to_star
    execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star"}}] at @s run item replace entity @s weapon.mainhand with minecraft:air

## リセット
    advancement revoke @s only mwr:cross_used