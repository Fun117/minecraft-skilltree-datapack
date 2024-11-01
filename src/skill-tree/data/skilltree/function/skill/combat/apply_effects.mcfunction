# 戦闘レベルに応じた攻撃力とエフェクトの設定

# 戦闘レベルが1以上の場合、攻撃力を少し強化
execute as @a if score @s skilltree_combat_level matches 1..2 run attribute @s minecraft:generic.attack_damage base set 5

# 戦闘レベルが3以上の場合、攻撃力をさらに強化し、移動速度ブーストを付与
execute as @a if score @s skilltree_combat_level matches 3..4 run attribute @s minecraft:generic.attack_damage base set 7
execute as @a if score @s skilltree_combat_level matches 3..4 run effect give @s minecraft:speed 10 0 true

# 戦闘レベルが5以上の場合、さらに強力なエフェクト（例：耐性）を付与
execute as @a if score @s skilltree_combat_level matches 5.. run attribute @s minecraft:generic.attack_damage base set 9
execute as @a if score @s skilltree_combat_level matches 5.. run effect give @s minecraft:speed 10 1 true
execute as @a if score @s skilltree_combat_level matches 5.. run effect give @s minecraft:resistance 10 0 true