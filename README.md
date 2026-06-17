# VORTEX — Scroll-driven frame animation

A scroll-driven product hero for the **VORTEX** beverage can, built with **Three.js**.
As you scroll down, the can spins and the lid pops open with a water burst; scrolling
back up reverses the motion. Short message lines slide in, hold, and fade out in sync
with the action, over a dark gradient stage.

## How it works

The source video is exported to an image sequence and scrubbed frame-by-frame on a
full-screen Three.js quad, driven by scroll position (with easing for smooth motion in
both directions). This is the classic "scroll-tied video" technique — smoother than
seeking a `<video>` element.

- **477 frames** (24fps source motion-interpolated to 48fps) at 880×720, cropped to the can.
- **"Contain" fit** keeps the whole can visible; the dark gradient frames the sides.
- **Type system:** Oswald (bold condensed) for the wordmark, Inter for body and labels.
- All assets (Three.js, fonts, frames) are vendored locally — no runtime CDN dependency.

## Run it

A static web server is required (the page uses ES modules):

```
python -m http.server 8123
```

then open <http://localhost:8123>. On Windows you can just double-click `run-site.bat`.

## Structure

```
index.html              # the whole app (inline CSS + JS)
run-site.bat            # launches the server and opens the browser
frames/                 # frame_0001.jpg … frame_0477.jpg
fonts/                  # Inter + Oswald (woff2)
libs/three.module.js    # Three.js r160
```

## Tuning

- Scroll length / pace: `#scroll-track { height: 1000vh }`
- Frame easing: `SMOOTHING` in `index.html`
- Reveal timing: `data-start` / `data-end` on each `.rline`
