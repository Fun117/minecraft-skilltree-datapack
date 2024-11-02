#ボスバー表示時間
scoreboard players set @s skilltree_farming_bar_time 100

scoreboard players operation @s skilltree_farming_xp += farming/plant_xp skilltree_values

# レベルに応じてスキルポイントを増加させる
scoreboard players operation @s skilltree_farming_points += @s skilltree_farming_level

# アクションバーにポイント追加を通知
title @s actionbar [{"text": "農業ポイント: ", "color": "green"},{"score": {"name": "@s","objective": "skilltree_farming_points"}}]

# 進捗をリセット
advancement revoke @s only skilltree:plant_seed