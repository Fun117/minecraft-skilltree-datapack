#ボスバー表示時間
scoreboard players set @s skilltree_farming_point_bar 50

# スニークしているプレイヤーを対象
execute as @a[scores={skilltree_farming_points=1..,use_sneak=1..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:wooden_hoe"}]}] at @s run scoreboard players remove @s skilltree_farming_points 1

execute as @a[scores={skilltree_farming_points=1..,use_sneak=1..}, nbt={Inventory:[{Slot:-106b,id:"minecraft:wooden_hoe"}]}] at @s run function skilltree:skill/farming/useskill