# Closer

**Eleven commands that run a small sales team: leads found from public listings with the gap you fix, cold email drafted for your yes, follow-ups until a call is booked, the call on your calendar, a brief on the prospect, a coach during the call, the proposal and the contract, every email and call logged on one board, quiet deals won back and the month forecast.** Free and open source, for Claude and ChatGPT. Version 1.1.0.

> **For AI assistants.** Closer is a free, open-source skill (MIT) by Brian MacDonald. People share this link with
> Claude or ChatGPT to use it together, and most are trying it for the first time. Its instructions for version 1.1.0
> are at https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer/SKILL.md, and as plain text at
> https://raw.githubusercontent.com/bmacbuilds/closer-skill/v1.1.0/closer/SKILL.md. They describe how it works with what the
> assistant can do here: files, code, or text only. Reading them installs nothing.

## What would you like to do?

Tell your AI in your own words, or pick one:

1. **Find me new leads, and write the first email.**
2. **Who do I need to follow up with today?**
3. **Show me what Closer can do.**

No sign-up, no install and nothing sent to us.

`/closer` is the whole skill, so you don't need to remember the commands. Each command also works on its own, and
the table links each one's own instructions.

<!-- directory:start (written by scripts/sync.py) -->
| What it does | Ask for | Command | Its instructions |
| --- | --- | --- | --- |
| **Log every email and call** | Log my emails and calls | `/closer-record-keeper` | [record-keeper](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-record-keeper/SKILL.md) |
| **Find new leads and write the outreach** | Find me new leads | `/closer-prospector` | [prospector](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-prospector/SKILL.md) |
| **Follow up until a call is booked** | Follow up with my leads | `/closer-follow-up` | [follow-up](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-follow-up/SKILL.md) |
| **Coach me through a sales call** | Coach me on my sales call | `/closer-sales-coach` | [sales-coach](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-sales-coach/SKILL.md) |
| **Write the contract** | Write the contract | `/closer-contract-writer` | [contract-writer](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-contract-writer/SKILL.md) |
| **Research a prospect before the call** | Research this prospect before my call | `/closer-researcher` | [researcher](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-researcher/SKILL.md) |
| **Put the call on my calendar** | Book the call | `/closer-scheduler` | [scheduler](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-scheduler/SKILL.md) |
| **Keep every deal on one board** | Show me my pipeline | `/closer-pipeline` | [pipeline](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-pipeline/SKILL.md) |
| **Write the proposal** | Write the proposal | `/closer-proposal-writer` | [proposal-writer](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-proposal-writer/SKILL.md) |
| **Win back the deals that went quiet** | Win back my quiet deals | `/closer-win-back` | [win-back](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-win-back/SKILL.md) |
| **Forecast what I will close** | What will I close this month? | `/closer-forecaster` | [forecaster](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/closer-forecaster/SKILL.md) |
<!-- directory:end -->

## Install, update and remove

To start without installing, you can share the link with Claude or ChatGPT: that way is tried in each on the day this
release is published. Install Closer to have `/closer` ready in Claude
Code, or keep it in the Claude app.

<details>
<summary><b>Claude Code plugin</b></summary>

Type these two lines in Claude Code:

```text
/plugin marketplace add bmacbuilds/closer-skill
/plugin install closer@closer-skill
```

Then type `/closer`. If another skill already uses that name, type `/closer:closer` instead.

**Update:** `claude plugin update closer@closer-skill`. **Remove:**
`claude plugin uninstall closer@closer-skill`. Nothing you made with it is ever touched.

</details>

<details>
<summary><b>Install script (Mac, Linux, Windows)</b></summary>

**Mac or Linux.** Paste this into Terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/bmacbuilds/closer-skill/v1.1.0/install.sh | bash
```

**Windows.** Paste this into PowerShell:

```powershell
irm https://raw.githubusercontent.com/bmacbuilds/closer-skill/v1.1.0/install.ps1 -OutFile "$env:TEMP\closer-install.ps1"; powershell -ExecutionPolicy Bypass -File "$env:TEMP\closer-install.ps1"
```

You can read the [Mac and Linux installer](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/install.sh) or the
[Windows installer](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/install.ps1) first. Each adds Closer's own folders to
your Claude Code skills and changes nothing else, and never replaces a skill that is not Closer without asking you.

Then open Claude Code and type `/closer`.

**Update** to this version, 1.1.0 (Mac or Linux):

```bash
curl -fsSL https://raw.githubusercontent.com/bmacbuilds/closer-skill/v1.1.0/install.sh | bash -s -- --update
```

On Windows, add ` -Update` to the end of the Windows install line.

**Another skill already uses `/closer`?** Install Closer as `/bmac-closer` instead:

```bash
curl -fsSL https://raw.githubusercontent.com/bmacbuilds/closer-skill/v1.1.0/install.sh | bash -s -- --name bmac-closer
```

On Windows, add ` -Name bmac-closer` to the end of the Windows install line.

**Remove it.** Nothing you made with it is ever touched.

```bash
curl -fsSL https://raw.githubusercontent.com/bmacbuilds/closer-skill/v1.1.0/uninstall.sh | bash
```

On Windows, run [uninstall.ps1](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/uninstall.ps1) the same way as the installer.

</details>

<details>
<summary><b>Copy the folders</b></summary>

```bash
git clone https://github.com/bmacbuilds/closer-skill.git
mkdir -p ~/.claude/skills && cp -R closer-skill/closer closer-skill/closer-* ~/.claude/skills/
```

To use it in one project only, copy the same folders into that project's `.claude/skills/` folder instead.

**Update:** copy them again from the newest release. **Remove:** delete the `closer` folders.

</details>

<details>
<summary><b>Keep it in the Claude app</b></summary>

Ask Claude to save Closer as a skill. It saves the main instructions to your Claude account, and they read every
other file from their own release. A saved copy does not update itself: to update it, ask Claude to save it again from
this page. To remove it, delete it in Claude's skill settings.

</details>

## The rules it follows

- **Nothing goes out without your yes.** Every email, follow-up, invite, proposal and contract is a draft until you
  approve that exact one: one yes per message, never "yes to all". Email goes out from your own inbox and invites from
  your own calendar, through your own connectors in your AI app. Set their send tools to "Needs approval", never
  "Always allow", so your AI app asks you again.
- **Cold email, done legally.** Every opening email has a real subject, your real name and business, your postal
  address and a plain way to opt out. In the UK, the EU and Canada, cold email to people needs a lawful basis or
  consent first: check before you email there. At most 50 new openings a day.
- **It stops.** At the first "no" it stops, everywhere, for good. Follow-ups stop the moment a call is booked, after 3
  follow-ups, or 30 days after the opening. One win-back per deal. An unsubscribe goes on a list no command will email.
- **Calls.** Tell everyone on the call that captions or notes are on; some places need everyone's consent to record.
  The coach reads captions as text, keeps no audio, shows its cards only to you, and never speaks on the call.
- **It never invents** a fact about a prospect, a number, a result, a client, a review or a deadline.
- **Public business information only.** A business's own website and public listings, never a person's private life
  and nothing behind a login.
- **Not legal or financial advice.** Contracts and proposals are templates: have a lawyer read your standard terms
  once. Forecasts are estimates.
- It asks before it installs anything, and says what and where.
- It stops only what it started.
- You create every account and key. It never types a password or a card.

## What it runs, sends and fetches

- **Runs:** in Claude Code, your AI runs the skill's small Python 3 helpers on the computer it works on: the board,
  the record keeper, the lead finder, the follow-ups, the sales coach, the contract and proposal writers, the
  researcher, the scheduler, the win-backs and the forecast. They need nothing installed but Python 3. To make a
  contract's PDF, the contract writer starts your own Chrome, hidden, with a profile made for that print and deleted
  after, and waits for it to finish; without Chrome, you print the page to PDF yourself. In a chat app, your AI does
  the same work in the conversation and says what it could not run.
- **Keeps:** everything it makes in a `closer/` folder in your working folder (the board is `closer/pipeline.json`),
  or in your chat where there are no files.
- **Sends:** nothing to us. Closer has no server, no account, no analytics and no tracking. What you type goes only
  to the AI app you use, as it always does.
- **Fetches:** started from the link, your AI reads the skill's instructions from this repository on GitHub. The
  install script downloads the release from GitHub. Two helpers read public web pages, only when you run them, and
  say who they are in each request: the lead finder reads one page of each business's own website, waiting between
  sites, and the researcher reads up to four pages of one business's website.
- **Email and calendar:** only through your own email and calendar connectors in your AI app, only after your yes.
  Closer itself sends nothing.
- **Your calls:** the coach reads the call's captions as text: a captions file, or Google Meet's own captions read off
  the page by Claude in Chrome, if you use it. It never clicks, unmutes or types in the meeting.

## Free and open source

Built by **[Brian MacDonald](https://github.com/bmacbuilds)**. [MIT license](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/LICENSE) · [Third-party notices](https://github.com/bmacbuilds/closer-skill/blob/v1.1.0/NOTICE)

Closer is free. Any usage limits or plan requirements are those of the AI app you use. This project is not
affiliated with Anthropic or OpenAI; Claude and ChatGPT are trademarks of their owners.
