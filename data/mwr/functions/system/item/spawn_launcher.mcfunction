execute as @e[type=minecraft:spectral_arrow,nbt={inGround:1b}] at @s unless entity @e[type=minecraft:armor_stand,tag=skeleton_spawner,dx=0,dz=0] run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,NoGravity:true,Tags:["skeleton_spawner"]}
execute as @e[type=minecraft:spectral_arrow,nbt={inGround:1b}] at @s run kill @e[type=minecraft:armor_stand,tag=skeleton_spawner,dx=0,dz=0]
execute as @e[type=minecraft:spectral_arrow,nbt={inGround:1b}] at @s run kill @s

item replace entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{launcher:1b}}}] weapon.mainhand with crossbow{display:{Name:'{"text":"スポナーランチャー","color":"green","italic":false}',Lore:['{"text":"着弾した地点にスケルトンポイントを設置する","color":"gray","italic":false}','{"text":"すでに設置されていた場合は削除する","color":"gray","italic":false}']},HideFlags:63,Charged:1b,ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],launcher:1b}