## 削除
    execute as @s[nbt={SelectedItem:{id:"minecraft:nether_star"}}] run item replace entity @s weapon.mainhand with minecraft:air

## リセット
    advancement revoke @s only core:cross_used