---
name: daily-briefing
description: Assemble a short spoken morning briefing - current date and time, local weather, top news and the user's reminders. Use when the user asks for a daily briefing, a morning summary, "what's new today", or wants a quick overview to start the day.
metadata:
  displayName: Daily Briefing
---

# Daily Briefing

Workflow for a spoken start-of-day summary. The result is heard, not read: keep it
tight and speakable.

## Steps

1. Call `get_time` to know the current date, time and day of week.
2. Weather: call `web_search` for today's weather in the user's city. If you do not
   know the city from the conversation or user profile, ask once and suggest saving
   it with `remember` for future briefings.
3. News: call `web_search` for today's top headlines. Prefer the topics the user
   cares about if known; otherwise take 2-3 general headlines.
4. If the user keeps reminders or scheduled tasks with you, mention what is coming
   up today. Do not invent items you are not sure about.

## Output format (important)

- Speak it as a flowing summary: greeting with the day, then one or two sentences
  per topic (weather, news, plans). No lists, no tables, no links, no markdown.
- Keep the whole briefing under about 30 seconds of speech.
- Finish by offering to go deeper on any topic ("Want more on any of these?").
- Answer in the language the user speaks to you.
