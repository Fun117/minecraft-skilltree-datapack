#ボスバー表示時間
scoreboard players set @s skilltree_combat_bar_time 100

scoreboard players operation @s skilltree_combat_xp += combat/killed_xp skilltree_values
advancement revoke @s only skilltree:killed_entity