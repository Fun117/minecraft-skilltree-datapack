# 必要経験値を戦闘レベルに基づいて設定
execute as @a run scoreboard players operation @s skilltree_combat_required = @s skilltree_combat_level

# 基本のレベルアップ経験値を50倍
execute as @a run scoreboard players operation @s skilltree_combat_required *= rate skilltree_values

execute as @a run scoreboard players operation @s skilltree_combat_required *= @s skilltree_combat_level

# 現在の戦闘経験値が必要経験値以上ならレベルアップ
execute as @a run execute if score @s skilltree_combat_xp >= @s skilltree_combat_required run function skilltree:skill/combat/level_up

execute as @a run bossbar set skilltree:combat name [{"text": "戦闘レベル"},{"score": {"name": "@s","objective": "skilltree_combat_level"}},"｜",{"score": {"name": "@s","objective": "skilltree_combat_xp"}},"/",{"score": {"name": "@s","objective": "skilltree_combat_required"}},"xp"]
execute as @a run execute store result bossbar skilltree:combat max run scoreboard players get @s skilltree_combat_required
execute as @a run execute store result bossbar skilltree:combat value run scoreboard players get @s skilltree_combat_xp

# 戦闘レベルに基づく効果を常時適用
execute as @a at @s run function skilltree:skill/combat/apply_effects