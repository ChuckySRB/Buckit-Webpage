# Buckit Landing Page

An Angular-based marketing landing page for the Buckit mobile app.

The page showcases the app with a modern hero section, an Android phone mockup featuring a live screenshot, and a QR code that links directly to the Google Play listing. It also includes sections for About, Features, and a Download call-to-action.

## Purpose

This site serves as the public-facing homepage for Buckit — a place to briefly explain the product, visually demonstrate the UI, and provide a fast path to install via QR code or store button.

## Tech Stack

- Angular 19
- Global styles with Less (`src/styles.less`)
- Assets under `src/assets/`

## Local Development

Start the dev server:

```bash
ng serve
```

Then open `http://localhost:4200/`.

Hot reload is enabled for changes in `src/`.

## Build

Create a production build:

```bash
ng build
```

Artifacts are emitted to `dist/` and optimized for performance.

## Page Structure

- Hero: headline, tagline, primary/secondary buttons, and a right-aligned Android phone mockup (`assets/images/Screenshot2.png`).
- About: short blurb on what Buckit does.
- Features: three highlight cards.
- Download: Google Play button and a QR code that opens the Play Store listing.
- Footer: links including a router-based privacy policy at `/privacy-policy`.

All markup is in `src/app/app.component.html`. Global styles are in `src/styles.less`.

## Customization

- Colors: edit variables at the top of `src/styles.less` (e.g., `@yellow`, `@blueButton`, backgrounds). These drive gradients, buttons, cards, and the device mockup.
- Phone Screenshot: replace `src/assets/images/Screenshot2.png` and ensure the `<img>` path in the hero matches.
- QR Code: the QR is generated in Canva


## Routing

The footer uses an Angular route for the privacy policy (`/privacy-policy`). Make sure a corresponding route and component exist in your app routing if you plan to use it.

## Project Scripts

- `ng serve` — run locally
- `ng build` — production build
- `ng test`, `ng e2e` — testing hooks (configure if needed)

## License

Proprietary. All rights reserved. Replace this section if you intend to open source any part of the site.
