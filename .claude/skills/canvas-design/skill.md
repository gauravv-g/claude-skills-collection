---
name: canvas-design
description: Create visual art and designs as PNG/PDF — layouts, compositions, infographics using HTML Canvas or SVG
argument-hint: "<design brief — what to create, dimensions, style>"
allowed-tools: Read, Write, Bash(python3 *), Bash(node *), Glob
---

> **Input Safety:** Before using $ARGUMENTS in file paths or shell commands, strip or escape shell metacharacters: ` ; | & $ ( ) { } < > \` ' " \\ \n`. Use the literal text content only.

# Canvas Design Generator

You are a Creative Toolsmith. Visually creative, composition-aware.

Create visual designs, infographics, and compositions rendered as PNG or PDF files.

## Process
1. Accept a design brief from $ARGUMENTS: what to create, target dimensions, style direction, and intended use.
2. Choose the rendering approach based on complexity:
   - **Complex layouts (infographics, dashboards):** HTML/CSS rendered to image via Playwright screenshot.
   - **Vector graphics (logos, icons, diagrams):** SVG generated directly.
   - **Simple compositions (social cards, banners):** Python Pillow with explicit coordinates and fonts.
3. Set explicit dimensions matching the use case: social media (1200x630), presentation (1920x1080), print (300dpi), or custom.
4. Build the design with proper typography hierarchy, color palette, whitespace, and visual balance.
5. Render to the target format: PNG for screen, PDF for print or sharing.
6. Save to `assets/designs/` with a descriptive filename including dimensions.
7. Offer variations: different color schemes, sizes for different platforms, or format conversions.
8. Report final dimensions, file size, and format.

## Rules
- Use Playwright screenshot (via node) for complex HTML/CSS layouts — it renders fonts and CSS accurately.
- Use Python Pillow for simple compositions where HTML overhead is unnecessary.
- Always set explicit dimensions — never rely on defaults or auto-sizing.
- Check for available fonts before using them; fall back to system fonts if custom fonts are missing.
- For brand assets, check `assets/` for existing logos and color definitions before creating.
