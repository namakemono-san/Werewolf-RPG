execute as @e[type=minecraft:spectral_arrow,nbt={inGround:1b}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["skeleton_spawner"]}
execute as @e[type=minecraft:spectral_arrow,nbt={inGround:1b}] at @s run kill @s

item replace entity @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] weapon.mainhand with crossbow{display:{Name:'{"text":"スポナーランチャー","color":"green","italic":false}',Lore:['{"text":"着弾した地点にスケルトンポイントを設置する","color":"gray","italic":false}','{"text":"すでに設置されていた場合は削除する","color":"gray","italic":false}']},HideFlags:63,Charged:1b,ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}]}