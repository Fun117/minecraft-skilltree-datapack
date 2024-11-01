## スコア
scoreboard objectives add skilltree_values dummy "values"
scoreboard players set rate skilltree_values 50

## 戦闘
scoreboard objectives add skilltree_combat_xp dummy "戦闘経験値"
scoreboard objectives add skilltree_combat_level dummy "戦闘レベル"
scoreboard objectives add skilltree_combat_required dummy
# スコア設定
scoreboard players set combat/damage_xp skilltree_values 20
scoreboard players set combat/killed_xp skilltree_values 50
scoreboard players set combat/bar_time skilltree_values 0
scoreboard players set combat/random skilltree_values 0
# ボスバーの作成
execute as @a at @s run bossbar add skilltree:combat "戦闘XP"
execute as @a at @s run bossbar set skilltree:combat players @s
execute as @a at @s run bossbar set skilltree:combat value 0
execute as @a at @s run bossbar set skilltree:combat color pink

## 採掘
scoreboard objectives add skilltree_mining_xp dummy "採掘経験値"
scoreboard objectives add skilltree_mining_level dummy "採掘レベル"
scoreboard objectives add skilltree_mining_required dummy

## 建築
scoreboard objectives add skilltree_building_xp dummy "建築経験値"
scoreboard objectives add skilltree_building_level dummy "建築レベル"
scoreboard objectives add skilltree_building_required dummy

## 農業
scoreboard objectives add skilltree_farming_xp dummy "農業経験値"
scoreboard objectives add skilltree_farming_level dummy "農業レベル"
scoreboard objectives add skilltree_farming_required dummy

## ログ
tellraw @a {"text":"スキルツリーのセットアップが完了しました","bold":true,"color":"green"}