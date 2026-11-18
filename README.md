# android-dev-tools.com redirects

`android-dev-tools.com` used to be a Squarespace site with one page per research
tool. Those pages now live on kpmoran.com under `/projects/<name>/`. This repo is
served by GitHub Pages on the old domain and only redirects:

| Old path | New location |
| --- | --- |
| `/`, `/home`, anything unknown | `kpmoran.com/publications/` |
| `/fusion-home` | `kpmoran.com/projects/fusion/` |
| `/crashscope-home` | `kpmoran.com/projects/crashscope/` |
| `/odbr`, `/redraw`, `/gvt`, `/mdroid`, `/gcat` | `kpmoran.com/projects/<same>/` |
| `/request-access-to-the-gvt-tool` | `kpmoran.com/projects/gvt/#access` |
| `/s/<file>` | the file under `kpmoran.com/projects/<name>/files/` |

Each old page is a stub (`<path>/index.html`) with a meta refresh, a canonical
link and a script redirect. `404.html` catches everything else, including the old
`/s/` downloads. To change the page map, edit `build.sh` and run it; the `/s/`
map is in `404.html`.

## Setup

1. Push this repo to GitHub and enable Pages (Settings → Pages → deploy from the
   `main` branch, root).
2. Custom domain: `www.android-dev-tools.com` (already in `CNAME`); tick
   **Enforce HTTPS** once the certificate is issued.
3. DNS at GoDaddy: `www` CNAME → `kpmoran.github.io`; apex `A` records →
   `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`.
   GitHub then redirects the apex to `www` automatically.

The domain has to stay registered for as long as the old links should work.
