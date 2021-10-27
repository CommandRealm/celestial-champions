##called when we are hurt
execute unless entity @s[tag=target] if entity @s[advancements={advancements:damage/damaged_by_malice_arrow=true}] at @s run function fighter:malice/hit_by_malice_arrow

advancement revoke @s only advancements:damage/hurt_entity_check
