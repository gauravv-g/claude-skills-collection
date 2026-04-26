#!/usr/bin/env node
// render-visual.js — Render HTML templates to branded PNG images using Playwright
// Usage: node render-visual.js <template> <output> [--width=1200] [--height=627] [--brand=personal] [--scale=2] [--data='{"key":"value"}']

const { chromium } = require('playwright-core');
const path = require('path');
const fs = require('fs');

const TEMPLATES_DIR = path.resolve(__dirname, '../../../assets/templates');

// Preset dimensions for common platforms
const PRESETS = {
  'linkedin-single': { width: 1200, height: 627 },
  'linkedin-square': { width: 1080, height: 1080 },
  'linkedin-story': { width: 1080, height: 1920 },
  'slide': { width: 1920, height: 1080 },
  'blog-header': { width: 1200, height: 630 },
  'og-image': { width: 1200, height: 630 },
};

async function renderVisual(templatePath, outputPath, options = {}) {
  const {
    width = 1200,
    height = 627,
    brand = 'personal',
    scale = 2,
    data = {},
  } = options;

  // Resolve template path (allow short names like "quote-card")
  let resolvedTemplate = templatePath;
  if (!path.isAbsolute(templatePath) && !templatePath.includes('/')) {
    const candidate = path.join(TEMPLATES_DIR, `${templatePath}.html`);
    if (fs.existsSync(candidate)) {
      resolvedTemplate = candidate;
    }
  }
  resolvedTemplate = path.resolve(resolvedTemplate);

  if (!fs.existsSync(resolvedTemplate)) {
    console.error(`Template not found: ${resolvedTemplate}`);
    process.exit(1);
  }

  // Read and process template
  let html = fs.readFileSync(resolvedTemplate, 'utf-8');

  // Inject brand class
  html = html.replace(/\{\{brand\}\}/g, brand);

  // Inject data placeholders
  for (const [key, value] of Object.entries(data)) {
    html = html.replace(new RegExp(`\\{\\{${key}\\}\\}`, 'g'), value || '');
  }

  // Clear any remaining unused placeholders
  html = html.replace(/\{\{[a-zA-Z]+\}\}/g, '');

  // Resolve output path to absolute
  const absoluteOutput = path.resolve(outputPath);

  // Write processed HTML to temp file
  const tmpDir = path.dirname(absoluteOutput);
  if (!fs.existsSync(tmpDir)) {
    fs.mkdirSync(tmpDir, { recursive: true });
  }
  const tmpPath = path.join(tmpDir, `.tmp-render-${Date.now()}.html`);
  fs.writeFileSync(tmpPath, html);

  try {
    const browser = await chromium.launch({ headless: true });
    const context = await browser.newContext({
      viewport: { width, height },
      deviceScaleFactor: scale,
    });
    const page = await context.newPage();

    await page.goto(`file://${tmpPath}`, { waitUntil: 'networkidle' });

    // Wait for web fonts to load
    await page.waitForFunction(() => document.fonts.ready);
    await page.waitForTimeout(300);

    await page.screenshot({
      path: absoluteOutput,
      type: 'png',
      fullPage: false,
    });

    await browser.close();

    const stats = fs.statSync(absoluteOutput);
    const sizeKB = Math.round(stats.size / 1024);
    console.log(JSON.stringify({
      output: absoluteOutput,
      dimensions: `${width}x${height}`,
      scale: `${scale}x`,
      actualPixels: `${width * scale}x${height * scale}`,
      brand,
      template: path.basename(resolvedTemplate),
      sizeKB,
    }));
  } finally {
    if (fs.existsSync(tmpPath)) {
      fs.unlinkSync(tmpPath);
    }
  }
}

// CLI
if (require.main === module) {
  const args = process.argv.slice(2);
  const positional = args.filter(a => !a.startsWith('--'));
  const flags = Object.fromEntries(
    args.filter(a => a.startsWith('--')).map(a => {
      const [k, ...v] = a.slice(2).split('=');
      return [k, v.join('=') || 'true'];
    })
  );

  const templatePath = positional[0];
  const outputPath = positional[1];

  if (!templatePath || !outputPath) {
    console.error('Usage: node render-visual.js <template> <output.png> [options]');
    console.error('');
    console.error('Templates: quote-card, stat-card, title-card (or full path)');
    console.error('');
    console.error('Options:');
    console.error('  --brand=personal|verluna|deepl');
    console.error('  --width=1200  --height=627  (or use --preset)');
    console.error('  --preset=linkedin-single|linkedin-square|slide|blog-header');
    console.error('  --scale=2  (device scale factor for retina)');
    console.error('  --data=\'{"stat":"62+","headline":"Projects built with AI"}\'');
    process.exit(1);
  }

  // Apply preset dimensions if specified
  let width = parseInt(flags.width) || 1200;
  let height = parseInt(flags.height) || 627;
  if (flags.preset && PRESETS[flags.preset]) {
    width = PRESETS[flags.preset].width;
    height = PRESETS[flags.preset].height;
  }

  let data = {};
  if (flags.data) {
    try {
      data = JSON.parse(flags.data);
    } catch (e) {
      console.error('Error parsing --data JSON:', e.message);
      process.exit(1);
    }
  }

  renderVisual(templatePath, outputPath, {
    width,
    height,
    brand: flags.brand || 'personal',
    scale: parseInt(flags.scale) || 2,
    data,
  }).catch(err => {
    console.error('Render error:', err.message);
    process.exit(1);
  });
}

module.exports = { renderVisual, PRESETS, TEMPLATES_DIR };
