# SlimeHUD

Adds a WAILA (What Am I Looking At) display for Slimefun blocks.  
You can see the name of the block you are looking at without opening its menu or breaking it.  

The HUD can be displayed in either the BossBar or the ActionBar, configurable in `config.yml`.  
Extra energy/cargo network information can also be toggled on or off.

Players can toggle the WAILA on or off with the command `/slimehud toggle`.

## Download

[Download SlimeHUD](https://resources.guizhanss.com/plugin/SlimeHUD)

## Preview

### BossBar version

<https://user-images.githubusercontent.com/101147426/180625208-4713a843-e856-475e-ba83-95b5a61786f8.mp4>

### ActionBar version

https://user-images.githubusercontent.com/101147426/180625211-cbcfd01d-d418-4e6c-a8ab-55d938d7840e.mp4

## PlaceholderAPI

- `%slimehud_toggle%` returns whether the player has SlimeHUD enabled: `true` or `false`.
- `%slimehud_hud%` returns the full HUD text, including the block name and extra info
- `%slimehud_hud_block%` contains only the block name
- `%slimehud_hud_block_info%` contains only the extra info

## Limitations

- Minecraft only has 7 BossBar colors, while chat text has 16.

## Requirements

- Spigot or a fork of it
- Slimefun

## Credits

*InfinityLib* by Mooy1
*Lombok* by Project Lombok
