---
title: Hebe
description: Accelerate Your Xcode Workflow. Context-aware commands for Git, CocoaPods, project scripts & more—driven entirely by keyboard.
tags: macos, tool, productivity
type: app
date: 2025-05-07 00:00
image: /Images/Apps/hebe/hebe-app-icon.png
---

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hebe — Xcode Productivity Companion</title>
  <script src="https://unpkg.com/feather-icons"></script>
  <style>
    /* Theme Variables & Dark-Mode */
    :root {
      --btn-bg:         #000;
      --btn-text:       #fff;
      --accent:         #c9e4d2;
      --text-primary:   #000000;
      --text-secondary: #555555;
      --card-bg:        #ededed;
      --shadow:         rgba(0, 0, 0, 0.05);
      --btn-hover-brightness: 1.1;
      --btn-hover-shadow:     rgba(0,0,0,0.3);
    }
    @media (prefers-color-scheme: dark) {
      :root {
        --btn-bg:         #e6e6e6;
        --btn-text:       #000;
        --accent:         #c9e4d2;
        --text-primary:   #ddd;
        --text-secondary: #aaa;
        --card-bg:        #2e2e2e;
        --shadow:         rgba(0, 0, 0, 0.3);
        --btn-hover-brightness: 1.2;
        --btn-hover-shadow:     rgba(0,0,0,0.5);
      }
    }

    /* Original Hebe Styles */
    .hebe-nav {
      padding: 1rem 2rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    .hebe-logo { font-weight: 700; font-size: 1.5rem; }
    .hebe-nav-links a {
      margin-left: 2rem;
      font-weight: 500;
      font-size: 0.875rem;
      color: var(--text-primary);
      transition: color 0.2s;
      padding-bottom: 0.25rem;
    }
    .hebe-nav-links a:hover { color: var(--accent); }
    .hebe-nav-links a.hebe-selected {
      color: var(--accent);
      border-bottom: 2px solid var(--accent);
    }
/* Download for Mac button */
.hebe-btn-accent {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  background: var(--btn-bg);
  color: var(--btn-text);
  border: 1px solid rgba(0,0,0,0.1);
  box-shadow: 0 4px 10px rgba(0,0,0,0.1);
  padding: 0.75rem 1.5rem;
  border-radius: 0.5rem;
  font-weight: 500;
  text-decoration: none;
  transition: filter 0.2s, box-shadow 0.2s;
}
/* Apple logo styling */
.hebe-btn-accent .apple-logo {
  font-size: 1.25rem;
  line-height: 1;
}

/* hover “shine” effect */
.hebe-btn-accent:hover {
  filter: brightness(var(--btn-hover-brightness));
  box-shadow: 0 8px 20px var(--btn-hover-shadow);
}

    .hebe-hero {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
    }
    .hebe-hero-content { flex: 1; min-width: 300px; }
    .hebe-hero-content h1 {
<!--      font-size: 3rem;-->
<!--      font-weight: 700;-->
      margin-bottom: 1rem;
    }
    .hebe-hero-content p {
      color: var(--text-secondary);
      margin-bottom: 1.5rem;
      font-size: 1.125rem;
    }
    .hebe-hero-image { flex: 1; min-width: 300px; text-align: center; }
    .hebe-hero-image img {
      max-width: 100%;
      padding: 4rem 0rem;
    }

    .hebe-section {
      /* extra space above every section */
      padding-top: 4rem;
    }
    .hebe-section h2 {
      font-size: 2.5rem;
      font-weight: 700;
      text-align: center;
      margin-bottom: 1rem;
    }
    .hebe-section p.hebe-lead {
      text-align: center;
      color: var(--text-secondary);
      max-width: 600px;
      margin: 0 auto 2rem;
      font-size: 1.125rem;
    }
    .hebe-features-grid,
    .hebe-testimonials-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px,1fr));
      gap: 2rem;
    }

    .hebe-card {
      background: var(--card-bg);
      padding: 1.5rem;
      border-radius: 1rem;
      box-shadow: 0 4px 20px var(--shadow);
      transition: transform 0.3s;
    }
    .hebe-card:hover { transform: translateY(-5px); }
    .hebe-card h3 {
      display: flex;
      align-items: center;
      font-size: 1.25rem;
      font-weight: 500;
      margin-bottom: 0.75rem;
    }
    .hebe-card h3 svg { margin-right: 0.5rem; color: var(--accent); }
    .hebe-card p, .hebe-card ul {
      color: var(--text-secondary);
      font-size: 1rem;
      margin: 0;
      padding: 0;
    }
    .hebe-card ul { list-style-type: circle; }

    .hebe-how-steps-container {
      position: relative;
      padding: 4rem 2rem;
    }
    .hebe-how-line {
      position: absolute;
      top: 4rem;
      left: 10%;
      width: 80%;
      height: 2px;
      background: var(--text-secondary);
    }
    .hebe-how-steps {
      display: flex;
      justify-content: space-between;
      align-items: flex-start;
      gap: 2rem;
      flex-wrap: wrap;
    }
    .hebe-step-card {
      background: var(--card-bg);
      padding: 2rem 1rem;
      border-radius: 1rem;
      box-shadow: 0 4px 20px var(--shadow);
      flex: 1;
      min-width: 240px;
      text-align: center;
    }
    .hebe-step-badge {
      width: 3rem;
      height: 3rem;
      background: var(--accent);
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 auto 1rem;
      font-weight: 700;
      color: #333;
      font-size: 1.125rem;
    }
    .hebe-step-card h3 {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
      font-size: 1.25rem;
    }
    .hebe-step-card p {
      margin-top: 0.5rem;
      color: var(--text-secondary);
      font-size: 1rem;
    }
    @media (max-width: 640px) {
      .hebe-how-line { display: none; }
      .hebe-how-steps { flex-direction: column; }
      .hebe-step-card { width: 100%; }
    }

    .hebe-footer {
      text-align: center;
      padding: 2rem;
      color: var(--text-secondary);
      font-size: 0.875rem;
    }

    /* Hero Overrides */
    .hebe-hero {
<!--      padding: 4rem 2rem;-->
<!--      background: var(--bg-hero);-->
    }
    .hebe-hero-content h1,
    .hebe-hero-content p {
      color: var(--text-primary);
    }
    @media (prefers-color-scheme: dark) {
      .hebe-hero {
<!--        background: var(--card-bg);-->
      }
      .hebe-hero-content h1,
      .hebe-hero-content p {
        color: var(--text-primary);
      }
    }
    
    article h3 {
        margin-top: 0;
    }
    
    /* Brand card in hero */
    .hebe-brand-card {
      display: inline-flex;
      align-items: center;
      padding: 0.5rem 0rem;
    }

    .hebe-brand-icon {
      width: 2rem;
      margin-right: 0.75rem;
    }

    .hebe-brand-name {
      color: var(--text-primary);
      font-size: 2.5rem;
      font-weight: 700;
      line-height: 1;
    }
  </style>
</head>
<body>
  <section class="hebe-hero">
    <div class="hebe-hero-content">
       <!-- Brand card -->
  <div class="hebe-brand-card">
    <img
      src="/Images/Apps/hebe/hebe-app-icon.svg"
      alt="Hebe App logo"
      class="hebe-brand-icon"
    />
    <span class="hebe-brand-name">Hebe</span>
  </div>
      <h2>Accelerate Your Xcode Workflow</h2>
      <p>Context-aware commands for Git, CocoaPods, project scripts & more—driven entirely by keyboard.</p>
      <a href="https://github.com/g-giannis/hebe-releases/releases/download/v0.1.1/Hebe-0.1.1.dmg" class="hebe-btn-accent">
        <span class="apple-logo"></span>
        Download for Mac
      </a>
    </div>
    <div class="hebe-hero-image">
      <img src="/Images/Apps/hebe/hebe-main-panel.png" alt="Hebe Demo">
    </div>
  </section>

  <section id="features" class="hebe-section">
    <h2>Core Features</h2>
    <p class="hebe-lead">Hebe brings the most common Xcode and project tasks under your fingertips. No more hunting menus—just fuzzy-searchable magic.</p>
    <div class="hebe-features-grid">
      <div class="hebe-card">
        <h3><i data-feather="cpu"></i>Context-Aware Panel</h3>
        <p>Shows only commands relevant to Xcode’s state.</p>
      </div>
      <div class="hebe-card">
        <h3><i data-feather="git-branch"></i>Git Integration</h3>
        <ul>
          <li>Checkout & auto-stash</li>
          <li>Stash / apply</li>
          <li>File history & PR browser</li>
          <li>Fetch & pull updates</li>
        </ul>
      </div>
      <div class="hebe-card">
        <h3><i data-feather="tool"></i>Xcode Tools</h3>
        <ul>
          <li>Clean Derived Data</li>
          <li>Auto-manage code signing</li>
        </ul>
      </div>
      <div class="hebe-card">
        <h3><i data-feather="package"></i>CocoaPods Management</h3>
        <ul>
          <li>Pod install & update</li>
          <li>Repo sync</li>
        </ul>
      </div>
      <div class="hebe-card">
        <h3><i data-feather="terminal"></i>Workspace Helpers</h3>
        <ul>
          <li>Show in Terminal</li>
          <li>Show in Finder</li>
        </ul>
      </div>
      <div class="hebe-card">
        <h3><i data-feather="folder"></i>Open Projects</h3>
        <p>Select and open saved Xcode projects when no workspace is open.</p>
      </div>
      <div class="hebe-card">
        <h3><i data-feather="shuffle"></i>Parallel Tasks</h3>
        <p>Execute multiple commands concurrently; monitor status in menu bar.</p>
      </div>
      <div class="hebe-card">
        <h3><i data-feather="command"></i>Keyboard-First UX</h3>
        <p>Navigate and execute every command without lifting your hands from the keyboard.</p>
      </div>
    </div>
  </section>

  <section id="testimonials" class="hebe-section">
    <h2>What Users Say</h2>
    <p class="hebe-lead">Real feedback from software engineers incorporating Hebe in their workflow.</p>
    <div class="hebe-testimonials-grid">
      <div class="hebe-card">
        <p>“Hebe has transformed my Xcode workflow, helping me stay in focus.”</p>
        <p class="hebe-footer">— Jane, iOS Engineer</p>
      </div>
      <div class="hebe-card">
        <p>“The keyboard-first UX feels so good!”</p>
        <p class="hebe-footer">— Mark, Mobile Team Lead</p>
      </div>
      <div class="hebe-card">
        <p>“The parallel tasks feature lets me run scripts simultaneously across multiple projects—huge time saver.”</p>
        <p class="hebe-footer">— Alex, QA Engineer</p>
      </div>
    </div>
  </section>

  <section id="how-it-works" class="hebe-how-steps-container hebe-section">
    <h2 class="hebe-section-title">How It Works</h2>
    <p class="hebe-lead">Follow these steps to get up and running quickly.</p>
    <div class="hebe-how-steps">
      <div class="hebe-step-card">
        <div class="hebe-step-badge">1</div>
        <h3><i data-feather="command"></i>Open Panel</h3>
        <p>Invoke Hebe via ⇧ + ⌘ + ⏎ hotkey.</p>
      </div>
      <div class="hebe-step-card">
        <div class="hebe-step-badge">2</div>
        <h3><i data-feather="search"></i>Type Command</h3>
        <p>Fuzzy-search tasks in real time.</p>
      </div>
      <div class="hebe-step-card">
        <div class="hebe-step-badge">3</div>
        <h3><i data-feather="play"></i>Execute</h3>
        <p>Press Enter and watch the output.</p>
      </div>
    </div>
  </section>

<!--  <section id="download" class="hebe-download-section">-->
<!--    <h2 class="hebe-section-title">Ready to Get Started?</h2>-->
<!--    <p class="hebe-lead">Download Hebe today and reclaim your time.</p>-->
<!--    <button class="hebe-btn-accent">Download Hebe</button>-->
<!--  </section>-->

  <script>
    feather.replace();
  </script>
</body>
</html>
