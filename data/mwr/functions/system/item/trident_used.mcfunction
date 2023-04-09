## 殴った場合の動作
    execute as @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run playsound minecraft:entity.item.break master @s ~ ~ ~ 0.5
    execute as @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run tag @s add kill_to_trident
    execute as @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run item replace entity @s weapon.mainhand with minecraft:air

## リセット
    advancement revoke @s only mwr:trident_used
