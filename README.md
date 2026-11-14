# SlimeHUD

[![Java CI](https://github.com/mybezo/SlimeHUD/actions/workflows/maven.yml/badge.svg)](https://github.com/mybezo/SlimeHUD/actions/workflows/maven.yml)

A lightweight Slimefun addon that adds a **WAILA** (*What Am I Looking At*) HUD for placed Slimefun blocks.

Just look at a block to see its name, with no need to open its menu or break it. SlimeHUD can also show useful extra information such as machine progress, energy output and cargo channels.

## Features

- Shows the name of the Slimefun block you are looking at, in real time
- Display it in the **BossBar** or the **ActionBar** (hotbar)
- Optional extra information:
  - Machine progress bar (supports most machines)
  - Generator output in J/t (supports most generators, including solar generators)
  - Stored energy in capacitors and other energy components
  - Energy network size on energy regulators/connectors
  - Cargo network size on cargo managers/connectors
  - Channel color on cargo input/output nodes
- Each player can toggle the HUD on or off
- Can be disabled globally or in specific worlds
- [PlaceholderAPI](#placeholderapi) support
- [SlimefunTranslation](https://github.com/SlimefunGuguProject/SlimefunTranslation) support for translated item names

## Preview

### BossBar

<https://user-images.githubusercontent.com/101147426/180625208-4713a843-e856-475e-ba83-95b5a61786f8.mp4>

### ActionBar

<https://user-images.githubusercontent.com/101147426/180625211-cbcfd01d-d418-4e6c-a8ab-55d938d7840e.mp4>

## Requirements

| Dependency | Required |
| --- | --- |
| Spigot / Paper (or a fork), 1.19+ | ✅ |
| Java 17+ | ✅ |
| Slimefun | ✅ |
| GuizhanLibPlugin | ✅ |
| PlaceholderAPI | Optional |
| SlimefunTranslation | Optional |

## Installation

1. Download the latest build of SlimeHUD (see [Download](#download)).
2. Put the `.jar` file in your server's `plugins` folder, along with the required dependencies.
3. Restart the server.
4. Change `plugins/SlimeHUD/config.yml` to suit your server, then restart again.

## Download

- [Download SlimeHUD](https://resources.guizhanss.com/plugin/SlimeHUD)
- Or download the jar from the latest successful run in [GitHub Actions](https://github.com/mybezo/SlimeHUD/actions/workflows/maven.yml)

## Commands & Permissions

| Command | Description | Permission | Default |
| --- | --- | --- | --- |
| `/slimehud` | Shows plugin information | – | Everyone |
| `/slimehud toggle` | Turns your WAILA HUD on or off | `slimehud.togglewaila` | Everyone |

Aliases: `/sfhud`, `/sfh`

## Configuration

Main options in `config.yml`:

| Option | Default | Description |
| --- | --- | --- |
| `options.auto-update` | `true` | Automatically update the plugin |
| `options.placeholder-api-support` | `true` | Enable PlaceholderAPI placeholders |
| `options.slimefun-translation-support` | `true` | Use SlimefunTranslation for item names |
| `waila.disabled` | `false` | Disable the HUD for everyone (overrides everything else) |
| `waila.disabled-in` | `[]` | Worlds in which the HUD is disabled |
| `waila.location` | `bossbar` | Where to display the HUD: `bossbar` or `hotbar` |
| `waila.use-original-colors` | `true` | Use the block's original name colors (otherwise white) |
| `waila.bossbar-color` | `inherit` | BossBar color in `snake_case`; `inherit` matches the text color, `default` is white |
| `waila.show-cargo-size` | `true` | Show cargo network size |
| `waila.show-cargo-channel` | `true` | Show cargo node channel |
| `waila.show-energy-size` | `true` | Show energy network size |
| `waila.show-energy-stored` | `true` | Show stored energy |
| `waila.show-machine-progress` | `true` | Show machine progress |
| `waila.show-generator-generation` | `true` | Show generator output |
| `waila.tick-rate` | `10` | How often the HUD updates, in game ticks |

## PlaceholderAPI

| Placeholder | Returns |
| --- | --- |
| `%slimehud_toggle%` | Whether the player has SlimeHUD enabled (`true` / `false`) |
| `%slimehud_hud%` | The full HUD text, including the block name and extra info |
| `%slimehud_hud_block%` | Only the block name |
| `%slimehud_hud_block_info%` | Only the extra info |

## Limitations

- Minecraft only has 7 BossBar colors, while chat text has 16, so `bossbar-color: inherit` uses the closest match.

## Building from source

```bash
git clone https://github.com/mybezo/SlimeHUD.git
cd SlimeHUD
mvn package
```

The compiled jar will be in the `target/` folder.

## Credits

- Original plugin by [SchnTgaiSpock](https://github.com/SchnTgaiSpock/SlimeHUD)
- *InfinityLib* by Mooy1
- *Lombok* by Project Lombok

## License

This project is licensed under the [GNU GPL v3](LICENSE).
