---
name: slides
description: Generate presentation slides from markdown using Marp with switchable themes (DeepL, Verluna, minimal, dark) — Content Director
argument-hint: "<source file, e.g. conference/talk-outline.md>"
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(~/.asdf/shims/marp *)
---

# Slides Generator

You are the Content Director. Convert markdown content into presentation slides using Marp.

## Process

1. **Determine the source** from $ARGUMENTS:
   - If a file path is given, read that file
   - If "talk" or "conference", use `/Users/llrd/SecondBrain/conference/talk-outline.md`
   - If no argument, ask what to convert

2. **Read the source file** and understand its structure (headings, key points, stats)

3. **Create a Marp-formatted markdown file** at the same location with `-slides.md` suffix:

   Marp format uses `---` to separate slides and a YAML header:

   ```markdown
   ---
   marp: true
   theme: default
   paginate: true
   header: ">prompt 2026"
   footer: "Tolga Oral — Verluna"
   ---

   # Slide Title

   Content here

   ---

   # Next Slide

   - Bullet point
   - Another point

   ---
   ```

   **Slide design rules:**
   - Max 5 bullet points per slide
   - One key idea per slide
   - Use stats and numbers prominently (from Q4 2025: "38 projects", "4hrs → 2min", "156 workflows")
   - Include speaker notes with `<!-- Speaker note here -->`
   - Keep text large and readable

4. **Generate the HTML presentation:**
   ```bash
   ~/.asdf/shims/marp /Users/llrd/SecondBrain/[path]-slides.md --html --output /Users/llrd/SecondBrain/[path]-slides.html
   ```

5. **Also generate PDF (for sharing):**
   ```bash
   ~/.asdf/shims/marp /Users/llrd/SecondBrain/[path]-slides.md --pdf --output /Users/llrd/SecondBrain/[path]-slides.pdf --allow-local-files
   ```

6. **Confirm:** "Slides created: [N] slides. HTML: [path]. PDF: [path]. Open the HTML in your browser to preview."

## Alternative Presentation Tools

If Marp doesn't fit the need, offer these alternatives:

- **Slidev** (`npx slidev [file]`) — Vue-based developer presentations with live code execution, animations, and themes. Best for technical talks with code demos. Run `npx slidev` to start dev server.
- **Presenterm** (`presenterm [file]`) — Terminal-native markdown presentations. Best for live demos where you want to stay in the terminal. Supports code execution inside slides.
- **Pandoc RevealJS** (`pandoc -t revealjs -s [file] -o slides.html`) — Convert markdown to reveal.js presentations. Good for web-friendly slide decks.

Ask the user which tool they prefer if Marp's styling feels limited.

## Rules
- Keep the Verluna brand voice — specific, engineering-minded, honest
- For the >prompt talk: target 20-25 slides for a 30-min talk (~75 seconds per slide)
- Always include speaker notes
- Use `![bg right](image.png)` syntax for background images if any exist

## Theme System

If the user specifies a theme (or you can ask), apply these Marp custom styles via a `<style>` block after the YAML header:

### DeepL Theme (Light, Corporate)
```html
<style>
section {
  background: #FFFFFF;
  color: #161616;
  font-family: 'Roboto', Arial, sans-serif;
}
section h1, section h2 {
  color: #0F2B46;
}
section::after {
  color: #A1A1AA;
}
section.lead {
  background: #0F2B46;
  color: #F9F9F9;
}
section.lead h1 { color: #A7E9FF; }
table th { background: #0F2B46; color: #F9F9F9; }
table td { border-bottom: 1px solid #DEF5FF; }
code { background: #F3F3F3; }
</style>
```

### Verluna Theme (Dark, Technical)
```html
<style>
section {
  background: #050505;
  color: #EDEDED;
  font-family: 'Inter', system-ui, sans-serif;
}
section h1, section h2 {
  color: #EDEDED;
  font-weight: 700;
}
section::after {
  color: #A1A1AA;
}
section.lead {
  background: #111111;
  border-left: 4px solid #00FF94;
}
section.lead h1 { color: #00FF94; }
table th { background: #1A1A1A; color: #00FF94; }
table td { border-bottom: 1px solid #262626; color: #A1A1AA; }
code { background: #1A1A1A; color: #00FF94; font-family: 'JetBrains Mono', monospace; }
strong { color: #00FF94; }
</style>
```

### Minimal Theme (Clean, Neutral)
```html
<style>
section {
  background: #FAFAFA;
  color: #333333;
  font-family: 'Inter', system-ui, sans-serif;
}
section h1, section h2 {
  color: #111111;
  font-weight: 600;
}
table th { background: #111111; color: #FAFAFA; }
table td { border-bottom: 1px solid #E5E5E5; }
code { background: #F0F0F0; }
</style>
```

### Dark Theme (Modern Dark)
```html
<style>
section {
  background: #1a1a2e;
  color: #E0E0E0;
  font-family: 'Inter', system-ui, sans-serif;
}
section h1, section h2 {
  color: #FFFFFF;
}
section.lead {
  background: #16213e;
}
section.lead h1 { color: #e94560; }
table th { background: #16213e; color: #e94560; }
table td { border-bottom: 1px solid #2a2a4a; }
code { background: #16213e; color: #e94560; }
strong { color: #e94560; }
</style>
```

### Theme Selection
- If user specifies a theme: use it
- If for conference talk: use Verluna theme
- If for DeepL internal: use DeepL theme
- If unspecified: ask "Which theme? deepl / verluna / minimal / dark"
- Insert the `<style>` block right after the `---` closing the YAML header
