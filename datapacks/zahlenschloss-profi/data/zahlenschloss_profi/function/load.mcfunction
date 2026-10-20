scoreboard objectives add zsp_code dummy
scoreboard objectives add zsp_richtig dummy
execute unless score #x1 zsp_code matches 0..1 run function zahlenschloss_profi:code_1001
