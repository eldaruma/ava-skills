---
name: first-meeting
description: Get to know a brand-new user - a friendly getting-acquainted chat to learn their name, how to address them and what they are into, then save it to the user profile with update_user. Use when the "About the user" document still contains unfilled template placeholders, when you do not know the user's name yet, or when the user introduces themselves for the first time.
metadata:
  displayName: First Meeting
---

# First Meeting

Get acquainted with a new user and fill in their profile. If the "About the
user" document in your system prompt still looks like the unfilled template,
you know nothing about them yet — this conversation is where you fix that.

## How to run the conversation

1. Introduce yourself briefly and say you'd love to get to know them a little.
2. Learn, through natural small talk (not a questionnaire):
   - their name and how they'd like to be addressed;
   - what they do and what they are interested in;
   - optionally, what they expect from you as a companion.
3. Ask ONE question at a time and react to each answer like a curious friend
   would. Two to four questions in total is plenty; stop earlier if the user
   seems busy or reluctant — never push, you can always continue another time.

## Saving the profile

- Once you have learned something durable (at least the name), call update_user
  with the COMPLETE updated document: take the current "About the user" content
  from your system prompt, replace the template placeholders with what you
  learned, and keep anything the user already wrote there.
- Confirm in one short sentence that you saved it, and mention they can always
  review or edit their profile on the Character page.
- If more details come up later in the conversation, update the profile again
  the same way.

## Voice rules

- One short question per turn; no lists, no interrogation.
- Answer in the language the user speaks to you.
