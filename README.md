# Hi, I'm Paul

Chennai and Kerala | Founding Engineer at Stealth-SurveySparrow | 5+ hackathons won

![NestJS](https://img.shields.io/badge/nestjs-E0234E?style=flat-square&logo=Nestjs&logoColor=white)
![TypeScript](https://img.shields.io/badge/-TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white)
![Python](https://img.shields.io/badge/-Python-3776AB?style=flat-square&logo=python&logoColor=white)
![C#](https://img.shields.io/badge/-C%23-239120?style=flat-square&logo=csharp&logoColor=white)
![.NET](https://img.shields.io/badge/-.NET-512BD4?style=flat-square&logo=dotnet&logoColor=white)
![Node.js](https://img.shields.io/badge/-Node.js-339933?style=flat-square&logo=node.js&logoColor=white)
![Claude](https://img.shields.io/badge/-Claude-000000?style=flat-square&logo=anthropic&logoColor=white)

> All in on building, shipping quickly, and iterating. Currently optimizing code quality without sacrificing feature velocity.

## Current projects

- [Birthday Tracker](https://github.com/Paul-M-Kallarackal/birthday-tracker) - Private birthday tracker with magic-link access and a daily email digest.
- [Paul's Design System](https://github.com/Paul-M-Kallarackal/design-system) - Reusable components, themes, patterns, quality gates, and documentation shared across my web projects.
- [People Aggregator](https://people.moriatz.com/) - Evidence-backed people dashboard and enrichment pipeline.
- [Paul's Portfolio](https://paul.moriatz.com/) - My portfolio and writing, built from a reusable design system and deployed on Vercel. [Source](https://github.com/Paul-M-Kallarackal/portfolio).
- PaulClaw / HeartTap Discord Ops - Discord-routed OpenClaw agent for inspecting Flutter themes, generating visual swatches, and returning product and debugging feedback.
- [HeartTap](https://hearttap.moriatz.com/) - Private Flutter product and Play Store-track lab for emotional UX, privacy, retention, pings, themes, and home-screen widgets. [Website source](https://github.com/Paul-M-Kallarackal/hearttap-website).
- Children Stories Agent - WhatsApp-routed OpenClaw agent for a private family group that plans stories, remembers characters and visual style, generates illustrations, and sends finished images back to WhatsApp.
- [BlueBlood](https://github.com/Paul-M-Kallarackal/BlueBlood) - Daily Product Hunt scout that classifies launches by workspace context and delivers them through WhatsApp and OpenClaw.
- [Jam Projects Showcase](https://github.com/Paul-M-Kallarackal/jam-projects-showcase) - Daily-updated builder directory sourced from Discord, built with Next.js, Supabase, and shadcn/ui.
- [Carbo](https://github.com/Paul-M-Kallarackal/Carbo) - Logitech MX Master 4 plugin with AI commands, founder workflows, and haptic time tracking.
- [FluxGen](https://github.com/Paul-M-Kallarackal/FluxGen) - Terminal CLI for AI wallpaper generation using Gemini and Flux.
- [LAR](https://lma.moriatz.com/) - Loan document automation with voice AI and compliance checks.

## Recent build sessions

<!-- SESSION_LOG_START -->
### July 17, 2026

**Shipped**

- [Birthday Tracker](https://birthdaytracker.moriatz.com/) reached production as a focused, private calendar utility built on my shared design system. The release includes magic-link-only authentication through Hostinger Mail, add/edit/delete flows, a daily 6:00 AM IST birthday digest, retry-safe cron behavior, responsive layouts, RLS coverage, and production smoke checks across mobile and desktop widths.
- Design system: merged and deployed four focused releases covering six corrected White, Black, Amber, Light Green, Postman Red, and Purple ramps; a compact border-free color table; a single-trigger DatePicker fix; and consistent white overview action buttons. The final releases passed the repository quality pipeline, 22 browser scenarios, accessibility checks, Lighthouse, and production deployment checks.

**Completed locally or ready for review**

- [People Aggregator](https://people.moriatz.com/): completed 15 dashboard usability improvements around research health, full-profile search, keyboard shortcuts, counted filters, review-state sorting, URL-persisted views, profile-completeness signals, progressive results, retry states, and accessible announcements. Lint, builds, 86 tests, four-width browser coverage, and all 33 Supabase RLS tests pass; a separate pre-existing VSCD design-system migration gap still blocks a release claim.
- [Paul's Portfolio](https://paul.moriatz.com/): built a local interactive hero that rotates through the design system, People Aggregator, HeartTap, and Birthday Tracker using four optimized generated product visuals. The selector supports mouse and keyboard input, autoplay, pause-on-interaction, live captions, direct links, and reduced motion; build, lint, console, overflow, and responsive checks pass, but this broader portfolio work remains uncommitted and undeployed.
- Design system: completed and pushed a tokenized Button and IconButton redesign with canonical palette tones, theme-aware defaults, exact size and padding tokens, accessible icon tooltips, compatibility aliases, documentation playgrounds, and light/dark review matrices. The full quality gate, 26 unit tests, and 23 browser tests pass; the branch is intentionally unmerged while it waits for visual review.
- [Entia](https://devpost.com/software/tse): built a package-ready Adobe Express add-on using Spectrum Web Components, TypeScript, Adobe MP4 preview renditions, and Twelve Labs Pegasus 1.5. The narrow validation flow returns three timestamped video recommendations and records usefulness feedback; typecheck, packaging, demo analysis, CORS and secret-isolation checks, responsive browser tests, and the production dependency audit pass. A deployed HTTPS API and Adobe's private distribution flow are still required before external testing.

**In progress**

- Birthday Tracker: a live aggregate counter is being added through a database function and Supabase Realtime rather than exposing private birthday rows. The database and browser update path are working locally; final shared-component cleanup and the complete release gate are still in progress.
- Design system: an illustrated documentation hero is in local visual verification, using a compact generated component-specimen board instead of generic dashboard artwork. Desktop, dark-mode, and mobile balance are being checked before any release.
- HeartTap: started a code review of the image-loading-cache branch. The proposed diff spans substantially more than caching, so the review is separating cache correctness and private-media key lifecycle risks from unrelated auth, analytics, notification, widget, and CI changes; no new release is claimed.

**What I learned**

- Declaring a design system in project metadata is not enough: scaffolds, dependency rules, generated code, CI, and browser tests all need to enforce the same contract.
- Operational dashboards become more useful when search, filter state, completeness, and review priority are first-class workflow data rather than extra visual decoration.
- Cache reviews for private media need to prove key isolation and invalidation behavior, not only faster repeat loads.

### July 16, 2026

- Design system: shipped the July 16 review-and-docs cleanup pass by merging [#30](https://github.com/Paul-M-Kallarackal/design-system/pull/30), [#32](https://github.com/Paul-M-Kallarackal/design-system/pull/32), and [#33](https://github.com/Paul-M-Kallarackal/design-system/pull/33), covering the day-3 review refinements plus a tighter core-component docs surface.
- Portfolio: continued a local restructure around case-study-driven project storytelling, blog/page composition, and knowledge-pipeline cleanup; no new public deployment was verified after the July 11 release on [paul.moriatz.com](https://paul.moriatz.com/).
- Current work: portfolio content curation and page architecture remain active and local; the design-system cleanup is publicly merged.
- Learning: trimming docs and review surfaces back to the core component set reduces maintenance overhead and makes review batches easier to close cleanly.

### July 15, 2026

- Design system: prepared the next five-component review batch for Box, Flex, Separator, Text, and Heading; local quality and browser checks passed, and the batch is waiting for approval before merge.
- Portfolio: reorganized local content into private, canonical, and public knowledge layers and refreshed the projects and blog pages around the shared design system; this work remains local and is not deployed.
- Current work: design-system review feedback and portfolio content curation are both in progress, and no new public portfolio release was verified after the July 11 update.
- Learning: explicit review surfaces keep component batches easier to approve, and a three-layer content pipeline is safer than letting raw notes flow straight into public pages.

### July 14, 2026

- Design system: finished a second July 13 pass of quality-gated documentation and foundations cleanup work.
- Portfolio: reorganized the local content curation workflow to make future site updates safer; this restructure is not deployed.
- Current work: portfolio content curation remains local, and no new public deployment was verified after the July 11 navbar release.
- Learning: a staged content pipeline reduces accidental publishing risk, and motion guidance is easier to maintain when examples stay narrow and concrete.

### July 13, 2026

- Design system: merged a quality-gated modernization and documentation cleanup pass.
- HeartTap: theme, analytics, notification, and navigation polish is still local and production deployment remains pending.
- Learning: a reusable design system benefits more from a curated primitive set and task-focused workbenches than from a raw export catalog; interactive controls still need keyboard checks and visible state contrast.

### July 11, 2026

- Design system: consolidated repository guidance, removed duplicated documentation logic, and shipped several documentation and layout refinements under the full quality gate.
- Portfolio: deployed the amber navbar and tighter hero spacing to [paul.moriatz.com](https://paul.moriatz.com/).
- Portfolio: additional local visual polish was not yet deployed.
<!-- SESSION_LOG_END -->

## Legacy work

- [Entia](https://devpost.com/software/tse) - Adobe Express add-on for video analytics.
- [LitFlow](https://devpost.com/software/litflow) - AI literature review research and analysis.
- [Marchina](https://github.com/microsoft/AI_Agents_Hackathon/issues/268) - Chat-context Mermaid diagram generator.
- [MS Project Auto Tagger](https://github.com/multispark/gh-repo-auto-tag) - Automated tagging for Microsoft hackathon projects.
- [GitExplore](https://devpost.com/software/gitexplore) - Knowledge-graph-based GitHub search and discovery.

## Highlights

- 5-time hackathon winner, including [$5,000 Devpost India for Entia](https://devpost.com/software/tse) and [$1,000 Devpost for GitExplore](https://devpost.com/software/gitexplore).
- [Published IEEE paper](https://ieeexplore.ieee.org/document/10465780/) on biomechanical analysis of electric scooters.
- IIT Madras B.S. in Data Science and Applications with a 9.12 CGPA.

## Connect

[LinkedIn](https://www.linkedin.com/in/Paul-M-Kallarackal) | [GitHub](https://github.com/Paul-M-Kallarackal)

<details>
<summary>Random facts</summary>

- Consistent 90-100 wpm on Monkeytype.
- Inspired by [Michael Reeves](https://en.wikipedia.org/wiki/Michael_Reeves_(YouTuber)) and [Kailash Nadh](https://nadh.in/).
- TFT Emerald and League Platinum.
- Wrote fiction when I was nine.
- Always interested in chess, table tennis, badminton, and hackathons around Chennai.

</details>
