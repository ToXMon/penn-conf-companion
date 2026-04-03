# Penn Blockchain Conference Companion

> Mobile-first conference companion page for Penn Blockchain 2026.

A lightweight, dark-themed single-page app providing conference attendees with schedule, speaker info, QR codes, and event navigation — deployed on Akash Network.

## ✨ Features

- **Mobile-first design** — Bottom tab navigation, safe-area insets
- **Dark theme** — Zinc/ember color palette with accent highlights
- **QR code generation** — Inline QR codes via qrcode.js
- **Static HTML** — No build step, no JavaScript framework, instant load
- **Nginx-optimized** — Compressed responses, proper caching headers

## 🛠 Tech Stack

| Layer | Technology |
|-------|-----------|
| Markup | HTML5 + inline CSS + vanilla JS |
| QR Codes | qrcode.js (CDN) |
| Server | Nginx (alpine) |
| Hosting | Akash Network |

## 🚀 Quick Start

```bash
# Clone
 git clone https://github.com/ToXMon/penn-conf-companion.git
 cd penn-conf-companion

# Open directly
 open index.html
```

Or run via Docker:

```bash
 docker build -t penn-conf-companion .
 docker run -p 8080:80 penn-conf-companion
```

## 🚢 Deployment

### Akash Network

See [`deploy.yml`](deploy.yml) — single web service, 128Mi RAM, 0.1 CPU. Push to `main` to trigger CI/CD, then update image tag in `deploy.yml`.

### CI/CD

[`.github/workflows/docker-publish.yml`](.github/workflows/docker-publish.yml) builds and pushes to GHCR on every push to `main`.

## 📄 License

Private — All rights reserved.
