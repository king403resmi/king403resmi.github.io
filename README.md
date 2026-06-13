<p align="center">
  <img src="assets/images/logo.svg" alt="KING403" width="300">
</p>

<h1 align="center">KING403 — Portal Korporat Resmi</h1>

<p align="center">
  <strong>Perusahaan teknologi digital Indonesia</strong><br>
  Platform · Brand · Cloud · Operations · sejak 2020
</p>

<p align="center">
  <a href="https://king403resmi.github.io/"><img src="https://img.shields.io/badge/Live-king403resmi.github.io-e8c547?style=for-the-badge" alt="Live Site"></a>
  <a href="https://king403.it.com/"><img src="https://img.shields.io/badge/Brand-king403.it.com-0a0a0a?style=for-the-badge" alt="Situs Resmi"></a>
  <a href="https://apidevel.org/"><img src="https://img.shields.io/badge/Developer-apidevel.org-1a1a1a?style=for-the-badge" alt="Developer"></a>
  <a href="https://github.com/King403resmi"><img src="https://img.shields.io/badge/GitHub-King403resmi-181717?style=for-the-badge&logo=github" alt="GitHub"></a>
</p>

<p align="center">
  <a href="https://king403resmi.github.io/">Beranda</a> ·
  <a href="https://king403resmi.github.io/profil-digital/">Profil Digital</a> ·
  <a href="https://king403resmi.github.io/layanan/">Layanan</a> ·
  <a href="https://king403resmi.github.io/kontak/">Kontak</a> ·
  <a href="https://king403resmi.github.io/faq/">FAQ</a>
</p>

---

## Tentang Repo Ini

Repository ini adalah **portal korporat resmi KING403** — situs profil perusahaan, layanan, portofolio, berita, karir, dan peta tautan brand. Dibangun dengan **Jekyll** + **GitHub Pages**, konten utama berbasis **Markdown**, tanpa backend.

| | |
|---|---|
| **Live** | [king403resmi.github.io](https://king403resmi.github.io/) |
| **Brand canonical** | [king403.it.com](https://king403.it.com/) |
| **Developer hub** | [apidevel.org](https://apidevel.org/) |
| **Email** | [hello@king403.com](mailto:hello@king403.com) |
| **Organisasi GitHub** | [github.com/King403resmi](https://github.com/King403resmi) |

---

## Jejak Digital & Domain Resmi

| Platform | URL | Peran |
|----------|-----|-------|
| **king403.it.com** | [king403.it.com](https://king403.it.com/) | Situs resmi brand (canonical) |
| **apidevel.org** | [apidevel.org](https://apidevel.org/) | Developer platform & tools |
| **Portal korporat** | [king403resmi.github.io](https://king403resmi.github.io/) | Profil perusahaan (repo ini) |
| **king403.nekoweb.org** | [king403.nekoweb.org](https://king403.nekoweb.org/) | Portal brand |
| **king403situs.github.io** | [king403situs.github.io](https://king403situs.github.io/) | Portal brand (GitHub Pages) |
| **HeyLink** | [heylink.me/king403.it.com](https://heylink.me/king403.it.com/) | Agregator tautan brand |
| **HeyCard** | [heycard.link/king403](https://heycard.link/king403) | Kartu profil digital |
| **YouTube** | [@seosementara5](https://www.youtube.com/@seosementara5) | Channel resmi KING403 |

Peta tautan lengkap: **[Profil Digital](https://king403resmi.github.io/profil-digital/)**

---

## Halaman Portal

| Halaman | URL | Isi |
|---------|-----|-----|
| Beranda | [/](https://king403resmi.github.io/) | Hero, statistik, layanan, testimoni, FAQ |
| Tentang | [/tentang/](https://king403resmi.github.io/tentang/) | Visi, misi, linimasa, budaya |
| Layanan | [/layanan/](https://king403resmi.github.io/layanan/) | 6 lini layanan & paket |
| Portofolio | [/proyek/](https://king403resmi.github.io/proyek/) | Studi kasus proyek |
| Testimoni | [/testimoni/](https://king403resmi.github.io/testimoni/) | Review klien |
| Teknologi | [/teknologi/](https://king403resmi.github.io/teknologi/) | Stack & metodologi |
| Berita | [/berita/](https://king403resmi.github.io/berita/) | Press release & insight |
| Mitra | [/mitra/](https://king403resmi.github.io/mitra/) | Klien, kemitraan, CSR |
| Tim | [/tim/](https://king403resmi.github.io/tim/) | Struktur & budaya kerja |
| Karir | [/karir/](https://king403resmi.github.io/karir/) | Lowongan & benefit |
| FAQ | [/faq/](https://king403resmi.github.io/faq/) | Pertanyaan umum |
| Kontak | [/kontak/](https://king403resmi.github.io/kontak/) | Email & formulir |
| Profil Digital | [/profil-digital/](https://king403resmi.github.io/profil-digital/) | Pusat tautan resmi |
| Privasi | [/kebijakan-privasi/](https://king403resmi.github.io/kebijakan-privasi/) | Kebijakan privasi |
| Syarat | [/syarat-ketentuan/](https://king403resmi.github.io/syarat-ketentuan/) | Syarat & ketentuan |

---

## Fitur Teknis

- **Jekyll 3.10** + tema **Minima 2.5** di **GitHub Pages**
- Layout kustom `k403-page` dengan typography & section cards
- Data terpusat: `_data/faq.yml`, `_data/testimonials.yml`, `_data/digital_links.yml`
- **JSON-LD schema** lengkap (`Organization`, `WebSite`, `WebPage`, `FAQPage`, `BreadcrumbList`, dll.)
- **Sitemap** `/sitemap.xml`, **robots.txt**, **humans.txt**, **security.txt**
- Verifikasi **Google Search Console** (meta + file)
- Halaman **404** kustom, favicon SVG, PWA manifest
- URL format **pretty** (`/tentang/`, `/layanan/`, dst.)

---

## Struktur Proyek

```
king403resmi.github.io/
├── index.md                 # Homepage
├── tentang.md … kontak.md   # Halaman konten (Markdown)
├── 404.html                 # Halaman tidak ditemukan
├── sitemap.xml              # Sitemap XML (layout: null)
├── _config.yml              # Konfigurasi Jekyll & domain resmi
├── _data/
│   ├── faq.yml              # Data FAQ (homepage + halaman FAQ)
│   ├── testimonials.yml     # Testimoni klien
│   └── digital_links.yml    # Tautan eksternal brand
├── _includes/
│   ├── head.html            # Override head Minima
│   ├── header.html / footer.html
│   ├── seo-schema.html      # JSON-LD terpusat
│   ├── k403-faq.html        # Komponen FAQ accordion
│   ├── k403-testimonials.html
│   ├── k403-digital-links.html
│   └── k403-page-link.html  # Helper tautan internal
├── _layouts/
│   ├── default.html         # Shell header + footer
│   └── k403-page.html       # Wrapper halaman internal
├── _sass/king403.scss       # Stylesheet utama
├── assets/
│   ├── main.scss            # Entry CSS (minima + king403)
│   └── images/              # Logo, OG image, banner (SVG)
├── robots.txt
└── Gemfile                  # github-pages + minima
```

---

## Pengembangan Lokal

**Prasyarat:** Ruby 3.x, Bundler

```bash
git clone https://github.com/king403resmi/king403resmi.github.io.git
cd king403resmi.github.io
bundle install
bundle exec jekyll serve
```

Buka [http://localhost:4000](http://localhost:4000)

**Windows (PowerShell):**

```powershell
bundle exec jekyll serve --livereload
```

> Gunakan `github-pages` gem agar plugin & versi Jekyll sama dengan production.

---

## SEO & Indeks

| Resource | URL |
|----------|-----|
| Sitemap | [king403resmi.github.io/sitemap.xml](https://king403resmi.github.io/sitemap.xml) |
| RSS Feed | [king403resmi.github.io/feed.xml](https://king403resmi.github.io/feed.xml) |
| Robots | [king403resmi.github.io/robots.txt](https://king403resmi.github.io/robots.txt) |

Keyword brand: `KING403`, `king403`, `KING403 resmi`, `KING403 Indonesia`, `king403.it.com`

---

## Repositori Terkait

| Repo / Org | URL | Deskripsi |
|------------|-----|-----------|
| **Portal korporat** | [king403resmi/king403resmi.github.io](https://github.com/king403resmi/king403resmi.github.io) | Source code situs ini |
| **King403resmi** | [github.com/King403resmi](https://github.com/King403resmi) | Organisasi engineering |
| **King403situs** | [github.com/King403situs](https://github.com/King403situs) | Organisasi portal brand |
| **Portal brand** | [King403situs/king403situs.github.io](https://github.com/King403situs/king403situs.github.io) | Source portal brand |

---

## Kontribusi & Dukungan

- **Bug / saran:** [GitHub Issues](https://github.com/king403resmi/king403resmi.github.io/issues)
- **Pull request:** fork → branch → PR → review tim
- **Kemitraan B2B:** [partnership@king403.com](mailto:partnership@king403.com)
- **Karir:** [halaman Karir](https://king403resmi.github.io/karir/) · [careers@king403.com](mailto:careers@king403.com)

---

## Lisensi & Legal

Konten brand © 2020–2026 **KING403**. Logo dan aset visual adalah milik KING403.

- [Kebijakan Privasi](https://king403resmi.github.io/kebijakan-privasi/)
- [Syarat & Ketentuan](https://king403resmi.github.io/syarat-ketentuan/)

---

<p align="center">
  <strong>KING403</strong> — Mitra Transformasi Digital Terpercaya<br>
  <a href="https://king403.it.com/">king403.it.com</a> ·
  <a href="https://apidevel.org/">apidevel.org</a> ·
  <a href="https://king403resmi.github.io/">Portal Korporat</a> ·
  <a href="https://king403.nekoweb.org/">nekoweb</a>
</p>

<p align="center">
  <sub>⭐ Star repo ini · 🐛 <a href="https://github.com/king403resmi/king403resmi.github.io/issues">Report issue</a> · 💼 <a href="https://king403resmi.github.io/karir/">We're hiring</a></sub>
</p>
