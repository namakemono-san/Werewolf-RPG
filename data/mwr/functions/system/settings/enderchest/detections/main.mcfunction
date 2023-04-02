execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:0b,id:"minecraft:stone_axe"}]}] run function mwr:system/settings/enderchest/buttons/extension/

execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:3b,id:"minecraft:lime_stained_glass_pane"}]}] run function mwr:system/settings/enderchest/buttons/skeleton/add

execute if score @s menu_page matches 0 if score hour settings matches 1 unless entity @s[nbt={EnderItems:[{Slot:4b,id:"minecraft:lime_stained_glass_pane"}]}] run function mwr:system/settings/enderchest/buttons/hours/first_add
execute if score @s menu_page matches 0 if score hour settings matches 2 unless entity @s[nbt={EnderItems:[{Slot:4b,id:"minecraft:lime_stained_glass_pane"}]}] run function mwr:system/settings/enderchest/buttons/hours/one_add

execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:paper"}]}] run function mwr:system/settings/enderchest/buttons/position
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:11b,id:"minecraft:emerald"}]}] run function mwr:system/settings/enderchest/buttons/transactions/
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:bone"}]}] run function mwr:system/settings/enderchest/buttons/skeleton
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:clock"}]}] run function mwr:system/settings/enderchest/buttons/hours/
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:name_tag"}]}] run function mwr:system/settings/enderchest/buttons/nickname
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:15b,id:"minecraft:spyglass"}]}] run function mwr:system/settings/enderchest/buttons/spectator
execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:chest"}]}] run function mwr:system/settings/enderchest/buttons/management/

execute if score @s menu_page matches 0 unless entity @s[nbt={EnderItems:[{Slot:21b,id:"minecraft:red_stained_glass_pane"}]}] run function mwr:system/settings/enderchest/buttons/skeleton/remove

execute if score @s menu_page matches 0 if score hour settings matches 1 unless entity @s[nbt={EnderItems:[{Slot:22b,id:"minecraft:red_stained_glass_pane"}]}] run function mwr:system/settings/enderchest/buttons/hours/first_remove
execute if score @s menu_page matches 0 if score hour settings matches 2 unless entity @s[nbt={EnderItems:[{Slot:22b,id:"minecraft:red_stained_glass_pane"}]}] run function mwr:system/settings/enderchest/buttons/hours/one_remove