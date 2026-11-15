execute as @a[name=chapolxz,tag=!menomon_inv_dev_zeraora] run function menomon_inv:devolver
execute as @a if items entity @s container.* minecraft:carrot_on_a_stick[minecraft:enchantment_glint_override=true,!minecraft:custom_model_data] run function menomon_inv:atualizar_jogador
execute as @a if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:enchantment_glint_override=true,!minecraft:custom_model_data] run function menomon_inv:atualizar_jogador
schedule function menomon_inv:atualizar 5s replace
