## 検知関係
scoreboard objectives remove use_sneak

## スコア
scoreboard objectives remove skilltree_values

## 戦闘
scoreboard objectives remove skilltree_combat_xp
scoreboard objectives remove skilltree_combat_level
scoreboard objectives remove skilltree_combat_required
scoreboard objectives remove skilltree_combat_bar_time
advancement revoke @a only skilltree:damage_entity
execute as @a run bossbar remove skilltree:combat

## 採掘
scoreboard objectives remove skilltree_mining_xp
scoreboard objectives remove skilltree_mining_level
scoreboard objectives remove skilltree_mining_required

## 建築
scoreboard objectives remove skilltree_building_xp
scoreboard objectives remove skilltree_building_level
scoreboard objectives remove skilltree_building_required

## 農業
scoreboard objectives remove skilltree_farming_xp
scoreboard objectives remove skilltree_farming_level
scoreboard objectives remove skilltree_farming_required
scoreboard objectives remove skilltree_farming_points
scoreboard objectives remove skilltree_farming_bar_time
scoreboard objectives remove skilltree_farming_point_bar
scoreboard objectives remove skilltree_farming_point_bar_max
advancement revoke @a only skilltree:plant_seed
execute as @a run bossbar remove skilltree:farming
execute as @a run bossbar remove skilltree:farming_point

## ログ
tellraw @a {"text":"スキルツリーに関連するデータの削除が完了しました","bold":true,"color":"red"}