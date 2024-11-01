#ボスバー表示時間
scoreboard players set combat/bar_time skilltree_values 50

advancement revoke @s only skilltree:damage_entity
scoreboard players operation @s skilltree_combat_xp += combat/damage_xp skilltree_values