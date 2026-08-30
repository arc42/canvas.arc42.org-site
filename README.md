# canvas.arc42.org

Repository for the website [canvas.arc42.org](https://canvas.arc42.org).

## Local development

All development runs in Docker — **no local Ruby, Bundler, or Jekyll needed**, just
Docker and `make`.

```bash
make build     # build the dev image once (installs the pinned gems — needs network)
make dev       # start Jekyll with live reload at http://localhost:4044
make stop      # stop it again
```

`make dev` serves this site at <http://localhost:4044> (not `0.0.0.0:4044` — Firefox
refuses to connect to `0.0.0.0`). The port is fixed at **4044**, not Jekyll's default
4000, so this dev server can run alongside the other arc42 sites' dev servers without
a clash — see `raw/port-assignment.md` in meta.arc42.org for the full assignment. The
number appears in three places that must stay in step: `SITE_PORT` in the `Makefile`,
the mapping plus `--port` in `docker-compose.yml`, and `EXPOSE`/`CMD` in the
`Dockerfile`.

Note that the theme is pulled in via `remote_theme`, so a build needs network access
even after the image exists.

### Make targets

| Command            | What it does                                                            |
| ------------------ | ----------------------------------------------------------------------- |
| `make help`        | List all targets.                                                       |
| `make dev`         | Start the dev server with live reload at http://localhost:4044.         |
| `make build`       | Build the `canvas-arc42-site:latest` image from the pinned gems.        |
| `make site`        | Generate the static site into `_site/`.                                 |
| `make check-links` | Build, then validate internal links/images/HTML with html-proofer.      |
| `make shell`       | Open a shell inside the container for debugging.                        |
| `make install`     | Refresh gems in the image after editing the `Gemfile`.                  |
| `make update`      | Update gems to their latest allowed versions (rewrites `Gemfile.lock`). |
| `make stop`        | Stop and remove the running container.                                  |
| `make logs`        | Tail the dev server logs.                                               |
| `make clean`       | Remove `_site/` and the local + Docker cache volumes.                   |

After `make update` (or any change to `Gemfile.lock`), the container refuses to serve
until you re-run `make build` — the entrypoint compares the lockfile against the gems
baked into the image and fails loudly on drift, so you never run against stale gems.

If you change configuration (`_config.yml` or anything under `_data/`), restart the
server — Jekyll does not pick those up on watch.

Gems are pinned to `github-pages` **232** (Jekyll 3.10), the same set GitHub Pages
builds this site with in production, so the local render matches the deployed one.


## Credits

Based upon [Jekyll](https://jekyllrb.com) and the [MinimalMistakes theme](https://mmistakes.github.io/minimal-mistakes/). Rendered using GitHub Pages.

## License
<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://canvas.arc42.org">Software Architecture Canvas</a> by <span property="cc:attributionName">Gernot Starke, Patrick Roos and arc42 Contributors</span> is licensed under <a href="http://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution-ShareAlike 4.0 International<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"></a></p> 
