# ava-skills

Skills follow the open [Agent Skills](https://agentskills.io) format

## Layout

```
index.json      # catalog manifest the app reads (raw.githubusercontent, branch main)
skills/*.zip    # one archive per skill, referenced by the manifest
src/<id>/       # skill sources (SKILL.md + optional references/assets)
build.sh        # rebuilds skills/*.zip from src/
```

## Adding a skill

1. Create `src/<id>/SKILL.md` with YAML frontmatter: required `name` (must equal the
   folder name: 1-64 chars, `[a-z0-9-]`, no leading/trailing/double hyphens) and
   `description` (up to 1024 chars — say what the skill does AND when to use it).
   Optional `metadata.displayName` sets the human-readable card title.
2. Run `./build.sh`.
3. Add an entry to `index.json`: `id` must equal the frontmatter `name` (verified by
   the app on download), `name`/`description` are what the Explored card shows,
   `archive` is the path relative to `index.json`.
4. Commit and push to `main`.

Limits enforced by the app: archive ≤ 30 MB, unpacked ≤ 100 MB, ≤ 500 files.
Bundled `scripts/` are stored but never executed
