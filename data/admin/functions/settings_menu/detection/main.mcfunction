execute as @a[tag=op] at @s if score @s menu_page matches 0 unless entity @a[nbt={EnderItems:[{Slot:0b,id:"minecraft:stone_axe"}]}] run function admin:settings_menu/menu/extension/

execute as @a[tag=op] at @s if score @s menu_page matches 0 unless entity @a[nbt={EnderItems:[{Slot:3b,id:"minecraft:lime_stained_glass_pane"}]}] run function admin:settings_menu/menu/skeleton/add
execute as @a[tag=op] at @s if score @s menu_page matches 0 if score hour settings matches 1 unless entity @a[nbt={EnderItems:[{Slot:4b,id:"minecraft:lime_stained_glass_pane"}]}] run function admin:settings_menu/menu/hours/first_add
execute as @a[tag=op] at @s if score @s menu_page matches 0 if score hour settings matches 10 unless entity @a[nbt={EnderItems:[{Slot:4b,id:"minecraft:lime_stained_glass_pane"}]}] run function admin:settings_menu/menu/hours/one_add

execute as @a[tag=op] at @s if score @s menu_page matches 0 unless entity @a[nbt={EnderItems:[{Slot:10b,id:"minecraft:paper"}]}] run function admin:settings_menu/menu/position
execute as @a[tag=op] at @s if score @s menu_page matches 0 unless entity @a[nbt={EnderItems:[{Slot:11b,id:"minecraft:emerald"}]}] run function admin:settings_menu/menu/transactions/
execute as @a[tag=op] at @s if score @s menu_page matches 0 unless entity @a[nbt={EnderItems:[{Slot:12b,id:"minecraft:bone"}]}] run function admin:settings_menu/menu/skeleton
execute as @a[tag=op] at @s if score @s menu_page matches 0 unless entity @a[nbt={EnderItems:[{Slot:13b,id:"minecraft:clock"}]}] run function admin:settings_menu/menu/hours/
execute as @a[tag=op] at @s if score @s menu_page matches 0 unless entity @a[nbt={EnderItems:[{Slot:14b,id:"minecraft:name_tag"}]}] run function admin:settings_menu/menu/nickname
execute as @a[tag=op] at @s if score @s menu_page matches 0 unless entity @a[nbt={EnderItems:[{Slot:15b,id:"minecraft:spyglass"}]}] run function admin:settings_menu/menu/spectator
execute as @a[tag=op] at @s if score @s menu_page matches 0 unless entity @a[nbt={EnderItems:[{Slot:16b,id:"minecraft:chest"}]}] run function admin:settings_menu/menu/management/

execute as @a[tag=op] at @s if score @s menu_page matches 0 unless entity @a[nbt={EnderItems:[{Slot:21b,id:"minecraft:red_stained_glass_pane"}]}] run function admin:settings_menu/menu/skeleton/remove
execute as @a[tag=op] at @s if score @s menu_page matches 0 if score hour settings matches 1 unless entity @a[nbt={EnderItems:[{Slot:22b,id:"minecraft:red_stained_glass_pane"}]}] run function admin:settings_menu/menu/hours/first_remove
execute as @a[tag=op] at @s if score @s menu_page matches 0 if score hour settings matches 10 unless entity @a[nbt={EnderItems:[{Slot:22b,id:"minecraft:red_stained_glass_pane"}]}] run function admin:settings_menu/menu/hours/one_remove