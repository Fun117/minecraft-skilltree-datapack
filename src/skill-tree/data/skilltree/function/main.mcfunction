function skilltree:skill/combat/level_up_check
# タイマーが0より大きければカウントダウン
execute as @a at @s if score @s skilltree_combat_bar_time matches 1.. run scoreboard players remove @s skilltree_combat_bar_time 1
# タイマーが0より大きい場合、ボスバーを表示
execute as @a at @s if score @s skilltree_combat_bar_time matches 1.. run bossbar set skilltree:combat visible true
# タイマーが0になった場合、ボスバーを非表示にする
execute as @a at @s if score @s skilltree_combat_bar_time matches 0 run bossbar set skilltree:combat visible false


# プレイヤーがスニークしているかつ、オフハンドに木のクワを持っている場合を確認してスキルを実行
function skilltree:skill/farming/level_up_check
execute as @a[scores={use_sneak=1..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:wooden_hoe"}]}] at @s run function skilltree:skill/farming/use_skill
# XPバー
execute as @a at @s if score @s skilltree_farming_bar_time matches 1.. run scoreboard players remove @s skilltree_farming_bar_time 1
execute as @a at @s if score @s skilltree_farming_bar_time matches 1.. run bossbar set skilltree:farming visible true
execute as @a at @s if score @s skilltree_farming_bar_time matches 0 run bossbar set skilltree:farming visible false
# ポイントバー
execute as @a at @s if score @s skilltree_farming_point_bar matches 1.. run scoreboard players remove @s skilltree_farming_point_bar 1
execute as @a at @s if score @s skilltree_farming_point_bar matches 1.. run bossbar set skilltree:farming_point visible true
execute as @a at @s if score @s skilltree_farming_point_bar matches 0 run bossbar set skilltree:farming_point visible false

## 検知関係
execute as @a at @s run scoreboard players set @s[scores={use_sneak=1..}] use_sneak 0