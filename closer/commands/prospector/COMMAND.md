---
title: find new leads and write the outreach
ask: Find me new leads
description: >-
  Prospector. Finds new leads and performs the cold outreach. Builds a list of local businesses
  from public listings, checks each one's own website for the gap you fix (no online booking, not
  mobile-friendly, slow, no Google Ads tag, no reviews, no online ordering), ranks them with the
  reason, puts the best on the board, and writes a short, specific, honest opening email for each
  one with the legal footer and an opt-out. Also puts a lead you already know on the board and
  writes their first email. Every email waits for your yes. Use when the user says "find me leads",
  "find customers", "prospect", "cold email", "cold outreach", "build a lead list", "who should I
  reach out to", "get me new clients", or "write to <someone>".
argument-hint: "[find <who> in <where> | bring <name> | draft <contact>]"
---

# Find new leads and write the outreach

The Prospector fills the top of the board. It finds businesses that need what the user sells,
proves why from their own website, and writes the first email; or it takes a lead the user already
knows and writes theirs. It never sends anything itself.

`<this command's folder>` below is the folder this command's files are in.

```bash
python3 "<this command's folder>/leads.py" audit https://harborlanedental.example --type Dentist
python3 "<this command's folder>/leads.py" rank --csv closer/leads.csv --offer "Website + Google Ads"
python3 "<this command's folder>/leads.py" add --top 10 --value 2500
python3 "<this command's folder>/leads.py" bring --who "Maria Chen" --company "Oak Street Bakery" \
    --email maria@oakstreetbakery.example --where "United States" --value 300
python3 "<this command's folder>/leads.py" draft --contact dana-harbor-lane
python3 "<this command's folder>/leads.py" record --contact dana-harbor-lane --text-file /tmp/opening.txt \
    --subject "Quick idea for Harbor Lane Dental" --approval "yes" --at 2026-10-19T09:02
```

## Steps

Ask one thing at a time. Confirm first that the user's offer and postal address are in
`closer/pipeline.json` (`/closer-pipeline init`).

**A lead they already know** ("write to Maria Chen at Oak Street Bakery"):

1. **Where.** If they did not say, ask which country the lead is in. In the UK, the EU and Canada, cold
   email to people needs a lawful basis or consent first: `leads.py` says so, and you tell them before
   anything goes out.
2. **Board.** `leads.py bring --who "<name>" --company "<business>" --email <address> --where "<country>"`.
   Only an address they gave you or the business publishes; never a guessed one. If the business already has a
   deal (a second person there, such as a business partner), `leads.py` changes nothing and names it: tell them,
   and ask whether this person gets a deal of their own (`--own-deal`).
3. **Write.** Go on with "For every lead" below.

**Finding new leads:**

1. **Who.** Ask what kind of business and where ("dentists and gyms in Austin, TX").
2. **Ask before reading the web.** Say what you would read (a web search, Google Maps results, the local
   chamber of commerce, an industry directory, then each business's own site) and read it only on their
   yes, with your AI app's own web tools or `leads.py`. If they say no, or you have neither, ask them to
   paste or upload a list instead, and work from that.
3. **Find.** For each business: name, owner or manager if the business's own site names them, type, the
   email published on its own site (or none), website. Write `closer/leads.csv` with the columns
   `name, who, type, email, website, city`. Never guess personal emails, never scrape behind a login,
   never buy a list.
4. **Check.** `leads.py rank --csv closer/leads.csv`. It reads one public page per site, slowly, and
   ranks by gaps. A missing tag is a hint, not proof: the email says "it looks like", never "you are not".
   When what they sell is not something a website shows (bookkeeping, insurance, cleaning), skip the
   check: rank by what they know about each business, and write the opening from that.
5. **Pick.** Show the ranked list with each reason. The user chooses who goes on the board;
   `leads.py add --top N` adds them as leads. Anyone on the suppression list is skipped.

**For every lead:**

1. **Write.** `leads.py draft --contact <id>`. You may make the first line more specific with something
   true from the business's own site, if they said yes to reading it, or from what they told you. Keep it
   under 90 words. Fill every `[fill: ...]`.
2. **Leave private things out.** What the lead said in private, or a tip a friend passed on, never goes in
   the email, however true. A friend is named only when they agree to be.
3. **Ask.** Show one email. "Send this to Dana Ortiz at Harbor Lane Dental? Reply yes or no." One email
   per question, every time, even when there are 47 of them.
4. **Send.** On a yes, create it as a draft in the user's own mail (Gmail or Microsoft 365, through its
   connector), and the user presses Send (or, if the user asked for it, send it through that connector
   right after that yes). With no mail connected, they copy it into their own mail, send it themselves
   and tell you when it went.
5. **Log.** Only after it went out: `leads.py record --approval "<their yes, word for word>"`. The deal
   moves to `contacted` and `/closer-follow-up` takes over. At most 50 openings a day: it protects the
   user's inbox reputation and keeps this one-to-one, not bulk mail.

## Example from the reel

"Local businesses in Austin, TX with no online booking": 47 found, the top eight shown with reasons
(Harbor Lane Dental: no online booking; Pine Street Fitness: site not mobile-friendly; Bluebird Pet Spa:
no Google Ads running...). The opening to Dana Ortiz, Mon Oct 19 at 9:02 AM, subject "Quick idea for Harbor
Lane Dental": "I noticed Harbor Lane doesn't have online booking yet. Most dental patients book after
hours, so that's new patients going to the practice down the street..." The list is
`leads.example.csv` (illustrative: every business in it is fictional).

## What it never does

- Never sends, and never records an email that did not go out.
- Never emails anyone on the suppression list or marked do-not-contact.
- Never invents a fact about the business, a mutual friend, a past conversation or a fake "Re:".
- Never puts in an email what the lead said in private, or names a friend who has not agreed to it.
- Never reads a website without the user's yes.
- Never hides who is writing or makes opting out hard.

## Consent and truth

- Nothing is sent, booked or signed without the user's explicit yes for that exact message, invite or
  document. Claude drafts, the user says "yes", then it goes out from the user's own accounts.
  One yes per message. Never "yes to all".
- Every cold email is honest and legal: a real subject line, the sender's real name and business, a postal
  address, and a plain way to opt out (CAN-SPAM in the US; in the UK, EU and Canada cold email to people
  needs a lawful basis or consent first, so check before emailing there). Opt-outs are honoured forever.
- Public business information only: the company's own site and public listings, never a person's private
  life, home or family, and nothing behind a login.
- Never invent a number, a result, a client, a review or a deadline.
