#ボスバー表示時間
scoreboard players set combat/bar_time skilltree_values 50

scoreboard players operation @s skilltree_combat_xp += combat/killed_xp skilltree_values
advancement revoke @s only skilltree:killed_entity