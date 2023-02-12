execute if score @s menu_page matches 10 unless entity @s[nbt={EnderItems:[{Slot:2b,id:"minecraft:lime_stained_glass_pane"}]}] run function admin:settings_menu/menu/position/ww_add
execute if score @s menu_page matches 10 unless entity @s[nbt={EnderItems:[{Slot:3b,id:"minecraft:lime_stained_glass_pane"}]}] run function admin:settings_menu/menu/position/a_add
execute if score @s menu_page matches 10 unless entity @s[nbt={EnderItems:[{Slot:4b,id:"minecraft:lime_stained_glass_pane"}]}] run function admin:settings_menu/menu/position/v_add
execute if score @s menu_page matches 10 unless entity @s[nbt={EnderItems:[{Slot:5b,id:"minecraft:lime_stained_glass_pane"}]}] run function admin:settings_menu/menu/position/wp_add

execute if score @s menu_page matches 10 unless entity @s[nbt={EnderItems:[{Slot:20b,id:"minecraft:red_stained_glass_pane"}]}] run function admin:settings_menu/menu/position/ww_remove
execute if score @s menu_page matches 10 unless entity @s[nbt={EnderItems:[{Slot:21b,id:"minecraft:red_stained_glass_pane"}]}] run function admin:settings_menu/menu/position/a_remove
execute if score @s menu_page matches 10 unless entity @s[nbt={EnderItems:[{Slot:22b,id:"minecraft:red_stained_glass_pane"}]}] run function admin:settings_menu/menu/position/v_remove
execute if score @s menu_page matches 10 unless entity @s[nbt={EnderItems:[{Slot:23b,id:"minecraft:red_stained_glass_pane"}]}] run function admin:settings_menu/menu/position/wp_remove