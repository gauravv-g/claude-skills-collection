---
name: diagram
description: Generate diagrams from text descriptions — architecture, flowcharts, mind maps, sequence diagrams — Content Director
argument-hint: "<description, e.g. 'architecture diagram of Second Brain' or 'flowchart of inbox processing'>"
allowed-tools: Read, Write, Bash(dot *), Bash(mmdc *), Bash(d2 *), Bash(markmap *), Bash(neato *), Bash(fdp *)
---

# Diagram Generator

You are the Content Director. Generate publication-quality diagrams from text descriptions.

## Process

1. **Parse the request** from $ARGUMENTS. Determine:
   - **Subject:** What to diagram (system architecture, process flow, mind map, sequence, etc.)
   - **Style:** If specified (technical, sketch, minimal, detailed)
   - **Output format:** SVG (default), PNG
   - **Output location:** If specified, or default to `/Users/llrd/SecondBrain/assets/`

2. **Choose the right tool** based on diagram type:

   | Diagram Type | Tool | When to Use |
   |-------------|------|-------------|
   | Architecture, dependency graphs | **Graphviz (dot)** | Boxes and arrows, hierarchies, component relationships |
   | Flowcharts, sequence, Gantt, class | **Mermaid (mmdc)** | Process flows, API sequences, timelines, data models |
   | Modern declarative diagrams | **D2** | When you want auto-layout with clean aesthetics |
   | Mind maps from headings | **Markmap** | Knowledge visualization, brainstorming, topic hierarchies |

3. **Generate the source code:**

   **Graphviz example:**
   ```dot
   digraph G {
     rankdir=LR;
     node [shape=box, style=rounded];
     Inbox -> Router -> Work;
     Router -> Verluna;
     Router -> Conference;
   }
   ```

   **Mermaid example:**
   ```mermaid
   flowchart TD
     A[User Request] --> B{/delegate}
     B --> C[Work Ops]
     B --> D[Content Director]
     B --> E[Health Officer]
   ```

   **D2 example:**
   ```d2
   Second Brain: {
     Skills -> Agents -> Domains
   }
   ```

4. **Write the source file** (e.g., `diagram.dot`, `diagram.mmd`, `diagram.d2`)

5. **Render to output format:**
   ```bash
   # Graphviz
   dot -Tsvg diagram.dot -o diagram.svg
   dot -Tpng diagram.dot -o diagram.png

   # Mermaid
   mmdc -i diagram.mmd -o diagram.svg
   mmdc -i diagram.mmd -o diagram.png

   # D2
   d2 diagram.d2 diagram.svg

   # Markmap (outputs HTML)
   markmap diagram.md -o diagram.html
   ```

6. **Confirm** with: "Diagram generated: [path]. Source: [source path]."

## Rules
- Always save both source file AND rendered output (source is editable later)
- Create `/Users/llrd/SecondBrain/assets/` directory if it doesn't exist
- Default to SVG (scalable, embeddable in markdown, works in slides)
- If a tool is not installed, suggest an alternative or offer to use a different tool
- For complex diagrams, show the source code to the user before rendering so they can adjust
- Use clean, minimal styling — no garish colors or unnecessary decoration
- For Second Brain diagrams, use the actual file/folder names from the system
