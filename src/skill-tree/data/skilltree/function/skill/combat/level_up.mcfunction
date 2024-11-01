#ボスバー表示時間
scoreboard players set combat/bar_time skilltree_values 50

scoreboard players add @s skilltree_combat_level 1
scoreboard players operation @s skilltree_combat_xp -= @s skilltree_combat_required

execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~

tellraw @s ["\n",{"text": "戦闘スキルがレベルアップしました！","bold": true,"color": "yellow"},{"text":"新しいレベル: ","underlined": true}, {"score":{"name":"@s","objective":"skilltree_combat_level"},"underlined":true},"\n "]

# レベル +5 / 1 ~ 5：木の剣
execute as @a if score @s skilltree_combat_level matches ..5 run give @s minecraft:wooden_sword
# レベル +10 / 6 ~ 15：石の剣
execute as @a if score @s skilltree_combat_level matches 6..15 run give @s minecraft:stone_sword
# レベル +15 / 16 ~ 30：鉄の剣 
execute as @a if score @s skilltree_combat_level matches 16..30 run give @s minecraft:iron_sword
# レベル +20 / 31 ~ 50：金の剣
execute as @a if score @s skilltree_combat_level matches 31..50 run give @s minecraft:golden_sword
# レベル +25 / 51 ~ 75：ダイヤの剣
execute as @a if score @s skilltree_combat_level matches 51..75 run give @s minecraft:diamond_sword
# レベル + 30 / 76 ~ 105：ネザライトの剣
execute as @a if score @s skilltree_combat_level matches 76..105 run give @s minecraft:netherite_sword
# レベル + 35 / 105 ~：トライデント
execute as @a if score @s skilltree_combat_level matches 105.. run give @s minecraft:trident