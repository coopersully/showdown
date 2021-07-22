execute at @a run playsound minecraft:ui.toast.in voice @p ~ ~ ~ 1 2

execute unless entity @a[tag=developer] run tellraw @a ["",{"text":"Showdown » ","color":"yellow"},"No developers were found online. ",{"text":"[+]","color":"#00B3FF","clickEvent":{"action":"run_command","value":"/tag @s add developer"},"hoverEvent":{"action":"show_text","contents":["Click here to assign yourself the \"developer\" tag"]}}]
execute if entity @a[tag=developer] run tellraw @a[tag=developer] ["",{"text":"Showdown » ","color":"yellow"},"Successfully reloaded. ",{"text":"[Wiki]","color":"#00B3FF","clickEvent":{"action":"open_url","value":"https://github.com/coopersully/Showdown/wiki"},"hoverEvent":{"action":"show_text","contents":["Click here to visit the Showdown wiki."]}}," ",{"text":"[Reinstall]","color":"#00B3FF","clickEvent":{"action":"run_command","value":"/function sd:admin/reinstall_confirm"},"hoverEvent":{"action":"show_text","contents":["Click here to reinstall all server-side assets."]}}]