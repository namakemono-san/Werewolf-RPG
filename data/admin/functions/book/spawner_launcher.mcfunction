## 付与
    give @s minecraft:crossbow{display:{Name:'{"text":"スポナーランチャー","color":"green","italic":false}',Lore:['{"text":"着弾した地点にスケルトンポイントを設置する","color":"gray","italic":false}','{"text":"すでに設置されていた場合は削除する","color":"gray","italic":false}']},HideFlags:63,Charged:1b,ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}]}

## リセット
    scoreboard players set @s options 0
    scoreboard players enable @s options