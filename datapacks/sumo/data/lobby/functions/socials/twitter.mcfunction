##Called to run the Youtube lobby button
execute positioned 5 65 11 run tellraw @a[distance=..5] [{"text":"Click ","color":"aqua"},{"text":"here","color":"white","bold":true,"clickEvent":{"action":"open_url","value":"https://twitter.com/commandrealm"}},{"text":" to check out our Twitter.","color":"aqua"}]
execute positioned 5 65 11 run advancement grant @a[distance=..5] only advancements:custom/socials