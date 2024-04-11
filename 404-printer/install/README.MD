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
            export = "303-printer.photo"
        }
	},
```
and paste this to your items.lua.
Upload script, go to your server.cfg and paste this:
```
ensure 303-printer
```