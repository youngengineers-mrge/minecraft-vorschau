function zahlenschloss_profi:schalter_lesen
scoreboard players set @s zsp_richtig 0
execute if score #s1 zsp_code = #x1 zsp_code run scoreboard players add @s zsp_richtig 1
execute if score #s2 zsp_code = #x2 zsp_code run scoreboard players add @s zsp_richtig 1
execute if score #s3 zsp_code = #x3 zsp_code run scoreboard players add @s zsp_richtig 1
execute if score #s4 zsp_code = #x4 zsp_code run scoreboard players add @s zsp_richtig 1
execute if score @s zsp_richtig matches 4 run function zahlenschloss_profi:richtig
execute unless score @s zsp_richtig matches 4 run function zahlenschloss_profi:falsch
