# VORTEX Original — Claude Design brief

Paste the **Prompt** at the bottom into claude.ai/design. The spec above it is the brand
truth (matches the cinematic + landing page already built in this repo) — keep it open so you
can answer the design agent's follow-ups consistently.

---

## Brand
- **Product:** VORTEX Original — sparkling focus energy. 16 fl oz (473 mL), **zero sugar**, **200 mg caffeine**.
- **Idea:** clarity from chaos. A swirling ocean vortex pressed into a can. Calm under pressure.
- **Voice:** terse, confident, kinetic. Lines like: "Enter the zone." · "Crack it open." · "Welcome to the zone." · "Quiet the noise." · "Energy without the crash."

## Color (exact)
- Background near-black: `#04080d` → `#0a141e` → `#122029` (dark vertical/radial gradients)
- Ink (text): `#eef4f8`  ·  Muted text: `rgba(238,244,248,.62)`
- **Accent (teal):** `#4fc3d6` (glows, CTAs, highlights)
- Flavor accents (if shown): Tidal `#4fc3d6`, Riptide `#e0457b`, Surge `#9be15d`
- Mood: deep dark, single teal accent, lots of negative space, soft glows/bloom.

## Type
- **Display / headlines:** **Bebas Neue** — tall condensed, uppercase, letter-spacing ~0.02–0.04em. Huge sizes (clamp up to ~9rem).
- **Body / subheads:** **Space Grotesk** — clean grotesque, weights 300–700.
- **Labels / specs / eyebrows:** **Space Mono** — uppercase, letter-spacing ~0.2em (e.g. "ZERO SUGAR · 200 MG CAFFEINE").

## Apple-style page structure
1. Minimal sticky top nav (wordmark left, "Buy" pill right; turns translucent-blur on scroll).
2. **Hero:** one giant centered can on dark, oversized Bebas headline, one-line sub, primary CTA. Calm, lots of space.
3. **Scroll-pinned product moment:** can rotates / a teal vortex swirls behind it as you scroll (sticky section, scroll-scrubbed).
4. **Alternating feature beats** (Apple-style): each a near-full-viewport section with ONE big claim + a product detail shot. Beats: *Razor focus* · *No crash* · *Zero sugar*.
5. **Specs strip:** 200 mg · 0 g sugar · 16 fl oz · clean ingredients (mono labels, count-up).
6. **Gallery / macro closeups** with parallax.
7. **Buy:** single hero price + pre-order CTA.
8. Footer.

## Animation + shader direction
- **WebGL vortex shader background** (react-three-fiber or raw GLSL): a slowly swirling, domain-warped fbm/noise whirlpool in teal/white on near-black; subtle mouse + scroll parallax. Use it behind the hero and the pinned product moment.
- **Scroll-scrubbed product:** rotate/scrub the can with scroll (GSAP ScrollTrigger or Framer Motion `useScroll`).
- **Bloom** on bright highlights (postprocessing `@react-three/postprocessing` UnrealBloom, subtle: strength ~0.4, threshold ~0.85).
- **Drifting particle motes** over the dark areas (additive, low opacity).
- **Kinetic typography:** headline words fade/slide up word-by-word on reveal.
- **Scroll-reveal** every section (fade + 28px rise, staggered), smooth easing `cubic-bezier(.2,.7,.2,1)`, `scroll-behavior:smooth`. Respect `prefers-reduced-motion`.

---

## Prompt (paste into claude.ai/design)

Design a premium, Apple-style one-page product site for **VORTEX Original**, a sparkling
focus energy drink (16 fl oz, zero sugar, 200 mg caffeine). Brand idea: "clarity from chaos" —
a swirling ocean vortex in a can. Use React with react-three-fiber for WebGL.

Look: deep near-black background (#04080d→#0a141e gradients), a single teal accent (#4fc3d6)
with soft glows, lots of negative space. Type: **Bebas Neue** for huge condensed uppercase
headlines, **Space Grotesk** for body, **Space Mono** for tracked uppercase labels/specs.

Build these sections, Apple-style (one bold idea per full-viewport beat, generous spacing):
1) Minimal sticky nav (VORTEX wordmark + a teal "Pre-order" pill that blurs in on scroll).
2) Hero: one giant centered can on dark, oversized headline "ENTER THE ZONE.", a one-line
   subhead, a teal CTA. Behind it, a **GLSL vortex shader** — a slow domain-warped fbm
   whirlpool in teal/white reacting subtly to mouse and scroll.
3) A scroll-pinned product moment where the can rotates and the vortex intensifies as you scroll.
4) Three alternating feature beats with big Bebas claims + product detail: "Razor focus",
   "No crash", "Zero sugar".
5) A spec strip with count-up stats (200 mg · 0 g · 16 fl oz) in Space Mono.
6) A buy section with a teal "Pre-order" CTA, then a small footer.

Animation: scroll-scrubbed can rotation, subtle UnrealBloom on highlights, drifting particle
motes, word-by-word kinetic headline reveals, and staggered scroll-reveal on every section
with easing cubic-bezier(.2,.7,.2,1). Respect prefers-reduced-motion. Make it feel calm,
cinematic, and expensive.
