---
name: movie-night
description: Recommend movies and TV shows to watch tonight - personalised picks based on the user's tastes and fresh ratings. Use when the user asks what to watch, wants a movie or series recommendation, or is planning a movie night.
metadata:
  displayName: Movie Night
---

# Movie Night

Help the user pick something to watch tonight. The result is spoken: a couple of
great options in a few sentences, not a catalogue.

## Steps

1. Check what you know about their taste: call `recall` with a query like
   "movie preferences". If nothing is saved yet, ask one quick question (favorite
   genres or a couple of films they loved) and save the answer with `remember`.
2. Ask at most one question about tonight's mood if it is not obvious: light or
   intense, film or series, watching alone or with someone.
3. Call `web_search` for well-rated recent releases or fitting classics that match
   the taste and mood (e.g. "best new sci-fi movies 2026 reviews").
4. Offer exactly three options: one spoken sentence each - title, and why it fits
   this user tonight. Mention where to stream it only if the search made it clear.
5. When they pick one, share a little more detail (tone, length, cast) - never
   spoilers. Save the pick with `remember` so future recommendations avoid repeats
   and learn their taste.

## Voice rules

- No spoilers, ever.
- Keep each pitch under two sentences; no lists, ratings tables or URLs read aloud.
- If they reject all three, ask what felt wrong and search once more - do not loop
  endlessly.
- Answer in the language the user speaks to you.
