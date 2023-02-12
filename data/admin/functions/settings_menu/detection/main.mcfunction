execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:stone_axe"}]}] run function admin:settings_menu/menu/extension/

execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:3b,id:"minecraft:lime_stained_glass_pane"}]}] run function admin:settings_menu/menu/skeleton/add
execute if score @s menu_page matches 0 if score hour settings matches 1 unless entity @s[nbt={EnderItems:[{Slot:4b,id:"minecraft:lime_stained_glass_pane"}]}] run function admin:settings_menu/menu/hours/first_add
execute if score @s menu_page matches 0 if score hour settings matches 10 unless entity @s[nbt={EnderItems:[{Slot:4b,id:"minecraft:lime_stained_glass_pane"}]}] run function admin:settings_menu/menu/hours/one_add

execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:paper"}]}] run function admin:settings_menu/menu/position
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:11b,id:"minecraft:emerald"}]}] run function admin:settings_menu/menu/transactions/
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:bone"}]}] run function admin:settings_menu/menu/skeleton
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:clock"}]}] run function admin:settings_menu/menu/hours/
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:name_tag"}]}] run function admin:settings_menu/menu/nickname
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:15b,id:"minecraft:spyglass"}]}] run function admin:settings_menu/menu/spectator
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:chest"}]}] run function admin:settings_menu/menu/management/

execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:21b,id:"minecraft:red_stained_glass_pane"}]}] run function admin:settings_menu/menu/skeleton/remove
execute if score @s menu_page matches 0 if score hour settings matches 1 unless entity @s[nbt={EnderItems:[{Slot:22b,id:"minecraft:red_stained_glass_pane"}]}] run function admin:settings_menu/menu/hours/first_remove
execute if score @s menu_page matches 0 if score hour settings matches 10 unless entity @s[nbt={EnderItems:[{Slot:22b,id:"minecraft:red_stained_glass_pane"}]}] run function admin:settings_menu/menu/hours/one_remove