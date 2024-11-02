#ボスバー表示時間
scoreboard players set @s skilltree_farming_bar_time 100

execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~

# レベルを上げて、経験値をリセット
scoreboard players add @s skilltree_farming_level 1
scoreboard players operation @s skilltree_farming_xp -= @s skilltree_farming_required

# レベルアップ時のフィードバック
tellraw @s ["\n",{"text": "農業スキルがレベルアップしました！","bold": true,"color": "green"},{"text":"新しいレベル: ","underlined": true}, {"score":{"name":"@s","objective":"skilltree_farming_level"},"underlined":true},"\n "]