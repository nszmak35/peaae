# peaae

ASCII art of Max Stirner in the middle of your terminal.

The portrait is embedded in the source and re-rendered on every terminal resize. It uses your terminal's own colors, so it follows your color scheme.

## Build & install

```sh
git clone https://github.com/nszmak35/peaae.git
cd peaae
make
sudo make install                   # or: make install PREFIX=$HOME/.local
```

Requires a C99 compiler and `make`.

## Usage

```
peaae [-o] [-c COLOR] [-a ASPECT]
```

| Option      | Description                                         |
|-------------|-----------------------------------------------------|
| `-o`        | Print the picture once and exit                     |
| `-c COLOR`  | Use palette color 0–255 instead of the default      |
| `-a ASPECT` | Cell height/width ratio, 1.0–4.0 (default: auto)    |
| `-h` / `-V` | Show help / version                                 |

Quit with `q`, `Esc`, `Ctrl-C` or `Ctrl-D`.
