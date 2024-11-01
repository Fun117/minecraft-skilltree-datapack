function skilltree:skill/combat/level_up_check
# タイマーが0より大きければカウントダウン
execute as @a at @s if score combat/bar_time skilltree_values matches 1.. run scoreboard players remove combat/bar_time skilltree_values 1
# タイマーが0より大きい場合、ボスバーを表示
execute as @a at @s if score combat/bar_time skilltree_values matches 1.. run bossbar set skilltree:combat visible true
# タイマーが0になった場合、ボスバーを非表示にする
execute as @a at @s if score combat/bar_time skilltree_values matches 0 run bossbar set skilltree:combat visible false