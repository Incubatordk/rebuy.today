# Rebuy Landing Page

Marketing landing page for [Rebuy](https://rebuy.today) — a location-based marketplace for buying and selling kids' items in Denmark.

## Tech Stack

- **Framework:** Astro (static site generator, zero JS by default)
- **Styling:** Hand-written CSS with CSS custom properties (no framework)
- **Hosting:** GitHub Pages with auto-deploy on push to `main`
- **Language:** Danish (primary market)

## Commands

```bash
npm run dev      # Start local dev server
npm run build    # Build static output to dist/
npm run preview  # Preview production build locally
```

### Docker / Makefile

```bash
make up          # Build and start Docker container (port 3000)
make down        # Stop container
make restart     # Rebuild and restart
make logs        # Tail container logs
make clean       # Remove dist/, node_modules/, .astro/
```

## Project Structure

```text
src/
├── assets/logos/       # Brand logos (from rebuy-core)
├── styles/global.css   # CSS custom properties (design tokens) + reset
├── components/         # Astro components (Header, Hero, Features, etc.)
├── layouts/            # BaseLayout with HTML shell, meta, SEO
└── pages/              # index.astro, privacy.astro, terms.astro
public/
├── CNAME               # Custom domain: rebuy.today
└── favicon.svg         # Site favicon
```

## Design Tokens

CSS custom properties in `src/styles/global.css` are sourced from `rebuy-core/design-system/tokens/`.

- **Accent color:** `#7D9B76` (sage green) — used for CTAs and interactive elements
- **Brand pink:** `#FFACAC` — used only in the logo, not for UI elements
- **Font:** Instrument Sans (Google Fonts)
- **Background:** `#FAFAF9` (warm off-white)

## Brand Assets

Logo files are copied from `/Users/robert/Git/rebuy/rebuy-core/brand/logos/`. The animated SVG (`logo-animated.svg`) features CSS keyframe animations and is inlined in the Hero section.

## Deployment

Push to `main` triggers `.github/workflows/deploy.yml` which builds and deploys to GitHub Pages. The `public/CNAME` file configures the custom domain.

## Related Repos

- `rebuy-core` — Design system, tokens, brand assets, documentation
- `rebuy-ios` — iOS app (SwiftUI)
