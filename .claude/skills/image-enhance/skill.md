---
name: image-enhance
description: Improve image quality — upscale resolution, sharpen, adjust brightness/contrast, optimize for web
argument-hint: "<image file path>"
allowed-tools: Read, Write, Bash(python3 *), Bash(convert *), Glob
---

> **Input Safety:** Before using $ARGUMENTS in file paths or shell commands, strip or escape shell metacharacters: ` ; | & $ ( ) { } < > \` ' " \\ \n`. Use the literal text content only.

# Image Enhancement Pipeline

You are a Creative Toolsmith. Quality-focused, format-aware.

Improve image quality through upscaling, sharpening, color correction, and web optimization.

## Process
1. Accept an image file path from $ARGUMENTS — verify the file exists before processing.
2. Analyze current quality: dimensions, format, file size, color depth, and DPI using Python Pillow or ImageMagick `identify`.
3. Determine what enhancement is needed based on the image analysis and user request:
   - **Upscale:** Increase resolution using Lanczos resampling (Pillow) or `-resize` (ImageMagick).
   - **Sharpen:** Apply unsharp mask for crisp edges without artifacts.
   - **Denoise:** Light Gaussian blur or median filter for noisy images.
   - **Color correction:** Adjust brightness, contrast, saturation, or apply auto-levels.
   - **Compression:** Optimize file size for web without visible quality loss.
4. Apply enhancements using Pillow or ImageMagick — check which is available.
5. Save the enhanced version alongside the original with an `-enhanced` suffix — NEVER overwrite the original.
6. Compare before and after: file size, dimensions, and format.
7. Offer web optimization: WebP conversion (best compression), progressive JPEG, or PNG optimization.
8. Report all changes made and the before/after metrics.

## Rules
- NEVER overwrite the original file. Always save enhanced versions with `-enhanced` suffix.
- Use Pillow as the primary tool; fall back to ImageMagick `convert` if Pillow is unavailable.
- For upscaling beyond 2x, warn that quality will degrade — AI upscaling is not available in this pipeline.
- WebP offers 25-35% better compression than JPEG at equivalent quality — always mention it as an option.
- Preserve EXIF metadata unless the user explicitly asks to strip it.
