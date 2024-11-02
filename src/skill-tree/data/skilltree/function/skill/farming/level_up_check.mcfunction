# 必要経験値をレベルに基づいて設定
execute as @a run scoreboard players operation @s skilltree_farming_required = @s skilltree_farming_level
execute as @a run scoreboard players operation @s skilltree_farming_required *= rate skilltree_values
execute as @a run scoreboard players operation @s skilltree_farming_required *= @s skilltree_farming_level

# レベルアップ判定
execute as @a run execute if score @s skilltree_farming_xp >= @s skilltree_farming_required run function skilltree:skill/farming/level_up

execute as @a run bossbar set skilltree:farming name [{"text": "農業レベル"},{"score": {"name": "@s","objective": "skilltree_farming_level"}},"｜",{"score": {"name": "@s","objective": "skilltree_farming_xp"}},"/",{"score": {"name": "@s","objective": "skilltree_farming_required"}},"xp"]
execute as @a run execute store result bossbar skilltree:farming max run scoreboard players get @s skilltree_farming_required
execute as @a run execute store result bossbar skilltree:farming value run scoreboard players get @s skilltree_farming_xp


execute as @a run execute if score @s skilltree_farming_point_bar matches 0 run scoreboard players operation @s skilltree_farming_point_bar_max = @s skilltree_farming_points
execute as @a run bossbar set skilltree:farming_point name [{"text": "農業ポイント"},"｜",{"score": {"name": "@s","objective": "skilltree_farming_points"}},"/",{"score": {"name": "@s","objective": "skilltree_farming_point_bar_max"}}]
execute as @a run execute store result bossbar skilltree:farming_point max run scoreboard players get @s skilltree_farming_point_bar_max
execute as @a run execute store result bossbar skilltree:farming_point value run scoreboard players get @s skilltree_farming_points