# 404-printer
Simple printer script for 5m in LUA, HTML, CSS, JavaScript
# Our Discord:
[Click](https://discord.gg/BnWM94EjaF)
# Requirements:
- [ox_target](https://github.com/overextended/ox_target/releases/tag/v1.14.0)
- [ox_inventory](https://github.com/overextended/ox_inventory/releases/tag/v2.39.1)
- ESX
# How to install?
Go to your ox_inventory script, then open the file ./data/items.lua, copy this:
```
	["photo"] = {
		label = "Obrazek",
		weight = 1,
		stack = false,
		close = true,
        consume = 0,
        server = {
            export = "404-printer.photo"
        }
	},
```
and paste this to your items.lua.
Upload script, go to your server.cfg and paste this:
```
ensure 303-printer
```

