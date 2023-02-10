bow = """    execute as @e[type=minecraft:villager,tag=battle] if score bow price matches price_replace run data modify entity @s Offers.Recipes[] set value {buy:{id:"minecraft:emerald",Count:price_replace},sell:{id:"minecraft:bow",Count:1,tag:{display:{Lore:['{"text":"プレイヤーを一撃で倒せる","color":"gray","italic":false}','{"text":"矢を用いる","color":"gray","italic":false}','{"text":"※一回で壊れる","color":"red","italic":false}']},Damage:384}},maxUses:2147483647,xp:0,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:0b}"""
arrow = """    execute as @e[type=minecraft:villager,tag=battle] if score arrow price matches price_replace run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:price_replace},sell:{id:"minecraft:arrow",Count:1,tag:{display:{Lore:['{"text":"弓を使う際必要になる","color":"gray","italic":false}','{"text":"※一回で無くなる","color":"red","italic":false}']}}},maxUses:2147483647,xp:0,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:0b}"""
steak = """    execute as @e[type=minecraft:villager,tag=battle] if score cooked_beef price matches price_replace run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:price_replace},sell:{id:"minecraft:cooked_beef",Count:5},maxUses:2147483647,xp:0,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:0b}"""
inv = """    execute as @e[type=minecraft:villager,tag=battle] if score invisibility price matches price_replace run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:price_replace},sell:{id:"minecraft:potion",Count:1,tag:{CustomPotionColor:8356754,display:{Name:'{"text":"透明化のポーション","color":"white","italic":false}'},CustomPotionEffects:[{Id:14,Amplifier:0,Duration:300,Ambient:true}]}},maxUses:2147483647,xp:0,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:0b}"""
stan = """    execute as @e[type=minecraft:villager,tag=battle] if score stan_grenade price matches price_replace run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:price_replace},sell:{id:"minecraft:snowball",Count:1,tag:{display:{Name:'{"text":"スタングレネード","color":"white","italic":false}',Lore:['["",{"text":"当てた対象を","color":"gray","italic":false},{"text":"5秒間","color":"white","italic":false},{"text":"盲目にし","color":"gray","italic":false}]','{"text":"行動不能にする","color":"gray","italic":false}']}}},maxUses:2147483647,xp:0,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:0b}"""
lance = """    execute as @e[type=minecraft:villager,tag=battle] if score lance_of_grudge price matches price_replace run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:price_replace},sell:{id:"minecraft:trident",Count:1,tag:{display:{Name:'{"text":"怨念の槍","color":"white","italic":false}',Lore:['{"text":"プレイヤーを２発で倒せる","color":"gray","italic":false}','{"text":"外した場合は帰ってくる","color":"gray","italic":false}','{"text":"※一回で壊れる","color":"red","italic":false}']},Damage:248,Enchantments:[{id:"minecraft:loyalty",lvl:1}],HideFlags:1}},maxUses:2147483647,xp:0,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:0b}"""
axe = """    execute as @e[type=minecraft:villager,tag=battle] if score werewolf_axe price matches price_replace run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:price_replace},sell:{id:"minecraft:stone_axe",Count:1,tag:{display:{Name:'{"text":"人狼の斧","color":"dark_red","italic":false}',Lore:['{"text":"プレイヤーを一撃で倒せる","color":"gray","italic":false}','{"text":"昼の間は一度しか使えない","color":"gray","italic":false}','{"text":"※一回で壊れる","color":"red","italic":false}','{"text":"※人狼以外購入できない","color":"red","italic":false}']},HideFlags:2,Damage:131,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-58544638,628531406,472398777,610879333]}]}},maxUses:2147483647,xp:0,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:0b}"""

with open('data/core/functions/store/battle/update.mcfunction', 'w', encoding='utf-8') as f:
    f.write("## 弓\n")

    for i in range(64):
        f.write(bow.replace("price_replace", str(i + 1)) + "\n")

    f.write("\n")
    f.write("## 矢\n")

    for i in range(64):
        f.write(arrow.replace("price_replace", str(i + 1)) + "\n")

    f.write("\n")
    f.write("## ステーキ\n")

    for i in range(64):
        f.write(steak.replace("price_replace", str(i + 1)) + "\n")

    f.write("\n")
    f.write("## 透明化\n")

    for i in range(64):
        f.write(inv.replace("price_replace", str(i + 1)) + "\n")

    f.write("\n")
    f.write("## スタングレネード\n")

    for i in range(64):
        f.write(stan.replace("price_replace", str(i + 1)) + "\n")

    f.write("\n")
    f.write("## 怨念の槍\n")

    for i in range(64):
        f.write(lance.replace("price_replace", str(i + 1)) + "\n")

    f.write("\n")
    f.write("## 人狼の斧\n")

    for i in range(64):
        f.write(axe.replace("price_replace", str(i + 1)) + "\n")

    f.write("\n")