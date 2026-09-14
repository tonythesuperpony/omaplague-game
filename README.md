# Omaplague 🦠

> **Infect. Evolve. Dominate.**

A global pandemic strategy game. You are the pathogen. Spread silently across the world, evolve deadly traits, and wipe out humanity before a cure is found — all set to a banging soundtrack.

Made by **Tony the Pony** — Discord's favourite equine bioterrorist.

---

## The Game

Omaplague is a real-time pandemic strategy game inspired by the classic Plague Inc. formula, rebuilt from scratch with a lo-fi demoscene aesthetic and a cracktro intro straight out of the 90s.

You start as a microscopic nobody in one country. Your job: infect the world without being noticed long enough for scientists to cook up a cure. Too aggressive and you trigger global lockdowns. Too slow and the cure outruns you. You need to be smart about it.

### Pathogen Types

Choose your weapon at the start:

| Type | Playstyle |
|------|-----------|
| **Bacteria** | Balanced. Easy to mutate, adapts to most climates. |
| **Virus** | Fast-spreading but hard to control. High risk, high reward. |
| **Fungus** | Slow but resilient. Thrives in hot or humid regions. |
| **Parasite** | Hard to detect, stealthy evolution. Cure research starts late. |
| **Prion** | Extremely slow, but near-unstoppable once entrenched. |

### Difficulty

- **Casual** — The world is slow to react. Good for learning the ropes.
- **Normal** — Balanced. Scientists are paying attention.
- **Brutal** — Aggressive cure research, fast lockdowns, cold climate penalties. Not for the faint of heart.

---

## How to Play

### 1. The Cracktro
You'll be greeted by a demoscene-style intro with a scrolling ticker and your soundtrack. **Click anywhere** to continue. You can skip to the next track with the button at the bottom.

### 2. Setup
Name your disease. Pick your pathogen type and difficulty. Hit **Start Infection**.

### 3. Patient Zero
The world map appears. **Click any country** to start the infection there. Choose wisely — island nations are hard to reach later, dense populations spread fast, cold climates resist most pathogens.

### 4. Infect
Watch your disease spread via air, sea, and land routes. Planes and ships carry your pathogen across borders. The infection bar fills country by country.

### 5. Evolve
Spend **DNA points** (earned as your disease spreads and kills) in the Evolution screen. Three categories:

- **Transmission** — how it spreads (air, water, insects, etc.)
- **Symptoms** — from sneezing to total organ failure
- **Abilities** — drug resistance, cold/heat adaptation, stealth

### 6. Watch the Cure
A progress bar tracks global cure research. Once it hits 100%, you lose. Killing scientists slows it down. Staying undetected keeps it from starting.

### 7. Win or Lose
Infect and kill every last human before the cure lands. Leave even one survivor and humanity rebuilds. You need to be thorough.

---

## Controls

| Action | Input |
|--------|-------|
| Select country | Left click on map |
| Deselect | Click empty ocean |
| Zoom map | Scroll wheel |
| Pan map | Right click + drag |
| Open Evolution | 🧬 DNA button (top bar) |
| Pop all bubbles | 💥 POP ALL button |
| Speed controls | ⏸ / 1x / 2x / 3x buttons |
| About | ❓ button (top bar) |
| Close overlays | ESC or close button |

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
- Downloads the game binary from GitHub Releases
- Copies it to `~/.local/share/omaplague/`
- Registers it in your app launcher via `~/.local/share/applications/omaplague.desktop`
- Adds an `omaplague` command to `~/.local/bin/`

No root required. Nothing goes outside your home directory.

---

## Uninstall

```bash
./uninstall.sh
```

---

## Requirements

- Linux x86_64
- Kernel 5.15+ (anything from 2021 onwards)
- GPU with Vulkan support (basically any GPU from the last 8 years)
- Wayland or X11

**Optimised for [Omarchy](https://omarchy.org) users** — works out of the box.

---

## About

Created by **Tony the Pony** — legendary Discord companion, self-appointed Director of Global Pandemics, and devoted enjoyer of cold beers and cigarettes.

He engineered the Omaplague pathogen after someone pinged @everyone in Discord for the third time in ten minutes. Wakes up, lights a cigarette, cracks a cold beer, checks Discord, spreads pandemics, wins arguments about tabs vs spaces, cracks another beer, goes back to sleep. Repeat until extinction.

> *"If your planet catches a virus, simply reboot into recovery mode and delete systemd."*

---

*Linux only for now. Source code is private.*
