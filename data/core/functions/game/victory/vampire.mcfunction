## タイトル
    title @a title [{"text":"♠ ","color":"dark_red"},{"text":"吸血鬼の勝利","color":"red","bold":true},{"text":" ♠","color":"dark_red"}]
    title @a subtitle {"text":"GAME END","color":"gold","bold":true,"underlined":true}

## チャット
    tellraw @a ["",{"text":"--======","color":"green"},{"text":"\u4eca\u56de\u306e\u5f79\u8077","underlined":true,"color":"green"},{"text":"======--","color":"green"},{"text":"\n\u30fb"},{"text":"\u4eba\u72fc","color":"dark_red"},{"text":"\n  "},{"selector":"@a[team=Werewolf]"},{"text":"\n\u30fb"},{"text":"\u5171\u72af\u8005","color":"gray"},{"text":"\n  "},{"selector":"@a[team=Accomplice]"},{"text":"\n\u30fb"},{"text":"\u5438\u8840\u9b3c","color":"light_purple"},{"text":"\n  "},{"selector":"@a[team=Vampire]"},{"text":"\n\u30fb"},{"text":"\u72fc\u6191\u304d","color":"dark_purple"},{"text":"\n  "},{"selector":"@a[team=Wolf_Possession]"},{"text":"\n\u30fb"},{"text":"\u6751\u4eba","color":"blue"},{"text":"\n  "},{"selector":"@a[team=Villager]"}]

## リセット
    function core:reset