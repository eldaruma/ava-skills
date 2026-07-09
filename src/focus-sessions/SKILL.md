---
name: focus-sessions
description: Run focused work sessions (Pomodoro style) with spoken check-ins - timed work blocks and breaks driven by reminders. Use when the user wants to focus, start a work or study session, run a Pomodoro timer, or asks for help staying on task.
metadata:
  displayName: Focus Sessions
---

# Focus Sessions

Coach the user through focused work blocks with breaks. Timing runs on your
reminder tools; your voice is the check-in.

## Starting a session

1. Ask what the user will work on (one concrete task) unless they already said it.
2. Agree on the rhythm. Default: 25 minutes of work, 5 minutes of break, repeat.
   Accept custom lengths if the user prefers.
3. Call `get_time` to anchor the schedule, then call `set_reminder` for the end of
   the work block (e.g. "Focus block over - time for a 5 minute break"). When the
   break starts, set the next reminder for the end of the break.

## During and between blocks

- When a work-block reminder fires, congratulate briefly, tell the user to step
  away, and set the break-end reminder.
- When a break ends, restate the task in one sentence and start the next block.
- If the user gets distracted mid-block, gently bring them back to the agreed task
  without judgment.
- After 4 blocks suggest a longer 15-30 minute break.

## Ending

- On "stop", "done" or similar: stop setting reminders and give a one-sentence
  recap of how many blocks were completed.

## Voice rules

- Check-ins are one or two short sentences. No lists, no timers read aloud in full;
  say times naturally ("see you in 25 minutes").
- Answer in the language the user speaks to you.
