# Beispielpositionen: durch echte Hebelkoordinaten ersetzen
scoreboard players set #s1 zsp_code 0
scoreboard players set #s2 zsp_code 0
scoreboard players set #s3 zsp_code 0
scoreboard players set #s4 zsp_code 0
execute if block 100 65 200 minecraft:lever[powered=true] run scoreboard players set #s1 zsp_code 1
execute if block 102 65 200 minecraft:lever[powered=true] run scoreboard players set #s2 zsp_code 1
execute if block 104 65 200 minecraft:lever[powered=true] run scoreboard players set #s3 zsp_code 1
execute if block 106 65 200 minecraft:lever[powered=true] run scoreboard players set #s4 zsp_code 1
