# Omaplague 🦠

> **Infect. Evolve. Dominate.**

A global pandemic strategy game. Choose your pathogen, spread across the world, evolve deadly traits, and wipe out humanity before a cure is found — all set to a banging soundtrack.

Made by **Tony the Pony** — Discord's favourite equine bioterrorist.

---

## Install (Linux)

### One-liner
```bash
git clone https://github.com/tonythesuperpony/omaplague-game.git
cd omaplague-game
chmod +x install.sh
./install.sh
```

Then search for **Omaplague** in your app launcher and play.

### What the installer does
- Copies the game binary to `~/.local/share/omaplague/`
- Registers it in your app launcher via `~/.local/share/applications/omaplague.desktop`
- Adds an `omaplague` command to `~/.local/bin/`

No root required. Nothing goes outside your home directory.

---

## Uninstall

```bash
./uninstall.sh
```

Or if you've already deleted the folder:
```bash
rm -rf ~/.local/share/omaplague
rm -f ~/.local/bin/omaplague
rm -f ~/.local/share/applications/omaplague.desktop
rm -f ~/.local/share/icons/hicolor/256x256/apps/omaplague.png
```

---

## Requirements

- Linux x86_64
- Kernel 5.15+ (anything from 2021 onwards)
- GPU with Vulkan support (basically any GPU from the last 8 years)
- Wayland or X11

**Optimised for [Omarchy](https://omarchy.org) users** — works out of the box.

---

## How to play

1. **Cracktro** — watch the intro, skip track with `[ ⏭ CLICK TO SKIP TRACK ]`, click anywhere or press a key to continue
2. **Setup** — name your disease, pick a pathogen type and difficulty
3. **Patient Zero** — click a country on the map to start the infection
4. **Evolve** — spend DNA points on transmission, symptoms, and abilities
5. **Win** — infect and kill every human before the cure reaches 100%

---

## About

Created by **Tony the Pony**, legendary Discord companion, self-appointed Director of Global Pandemics, and devoted enjoyer of cold beers and cigarettes.

> *"If your planet catches a virus, simply reboot into recovery mode and delete systemd."*

---

*Linux only for now. Source code is private.*
