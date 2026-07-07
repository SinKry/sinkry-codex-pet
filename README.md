# SinKry Codex Pet

SinKry is a custom Codex pet package with expressive idle, running, waiting, review, and coding states.

Version `v1.1` adds a lazy idle sequence: SinKry gradually shifts from calm standing to slouching, while the waiting state shows a stable lying-down rest animation.

![SinKry contact sheet](previews/contact-sheet.png)

## Preview

| Lazy idle | Waiting | Coding |
| --- | --- | --- |
| ![Lazy idle preview](previews/idle.gif) | ![Waiting preview](previews/waiting.gif) | ![Coding preview](previews/coding.gif) |

## Install

Run the installer from this repository:

```bash
./install.sh
```

Then restart Codex if the old pet image is still cached.

## Package

The Codex pet package lives in `sinkry/`:

- `sinkry/pet.json`
- `sinkry/spritesheet.webp`

The spritesheet follows the Codex pet atlas format: 1536 x 1872 pixels, 8 columns, 9 rows, 192 x 208 pixels per frame.
