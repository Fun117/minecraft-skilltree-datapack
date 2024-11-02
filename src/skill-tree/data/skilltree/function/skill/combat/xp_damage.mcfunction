#ボスバー表示時間
scoreboard players set @s skilltree_combat_bar_time 100

advancement revoke @s only skilltree:damage_entity
scoreboard players operation @s skilltree_combat_xp += combat/damage_xp skilltree_values