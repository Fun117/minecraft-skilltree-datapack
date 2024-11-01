## スコア
scoreboard players reset * skilltree_values

## 戦闘
scoreboard players reset * skilltree_combat_xp
scoreboard players reset * skilltree_combat_level
scoreboard players reset * skilltree_combat_required
advancement revoke @a only skilltree:damage_entity
execute as @a run bossbar remove skilltree:combat

## 採掘
scoreboard players reset * skilltree_mining_xp
scoreboard players reset * skilltree_mining_level
scoreboard players reset * skilltree_mining_required

## 建築
scoreboard players reset * skilltree_building_xp
scoreboard players reset * skilltree_building_level
scoreboard players reset * skilltree_building_required

## 農業
scoreboard players reset * skilltree_farming_xp
scoreboard players reset * skilltree_farming_level
scoreboard players reset * skilltree_farming_required

## ロード&ログ
function skilltree:load
tellraw @a {"text":"\nスキルツリーに関連するプレイヤーデータをリセットしました\n","bold":true,"color":"red"}