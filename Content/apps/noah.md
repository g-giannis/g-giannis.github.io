---
title: Noah
description: A simple, beautiful, privacy-first baby tracker for sleep and feedings. Designed for tired parents.
tags: ios, baby, parenting, tracker
type: app
date: 2025-12-11 00:00
image: /Images/Apps/noah/noah-app-icon.png
---

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Noah — Baby Feed & Sleep Tracker</title>
<script src="https://unpkg.com/feather-icons"></script>

<style>
/* ============================
   Color System (Dark-first)
============================ */
:root {
  --accent: #d0e7ff;
  --accent-soft: rgba(208,231,255,0.20);
  --text-primary: #ffffff;
  --text-secondary: #c3c3c3;
  --btn-bg: #ffffff;
  --btn-text: #000000;
  --card-bg: rgba(255,255,255,0.06);
  --card-border: rgba(255,255,255,0.08);
  --feature-max-width: 750px;
}

body.noah-page {
  margin: 0;
}

/* ============================
   Light Mode
============================ */
@media (prefers-color-scheme: light) {
  :root {
    --accent: #0070f0;
    --accent-soft: rgba(0,112,240,0.12);
    --text-primary: #111111;
    --text-secondary: #444444;
    --btn-bg: #111111;
    --btn-text: #ffffff;
    --card-bg: rgba(0,0,0,0.03);
    --card-border: rgba(0,0,0,0.06);
  }

  body.noah-page {
    background: #f5f5f7;
    color: var(--text-primary);
  }
}

/* ============================
   Hero
============================ */
.noah-hero {
  padding: 3rem 1rem 1rem;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center;
}

.noah-hero-content {
  flex: 1;
  min-width: 300px;
}

.noah-hero-content h1 {
  font-size: 2.6rem;
  margin-bottom: 1rem;
  color: var(--text-primary);
}

.noah-hero-content p {
  font-size: 1.15rem;
  line-height: 1.6;
  margin-bottom: 1.5rem;
  margin-right: 1.5rem;
  color: var(--text-secondary);
}

.noah-hero-image {
  text-align: center;
  padding-top: 4rem;
}

.noah-hero-image img {
  width: 100%;
  max-width: 420px;
  border-radius: 10px;
}

.noah-btn {
  display: inline-flex;
  align-items: center;
  gap: .6rem;
  padding: .75rem 1.5rem;
  border-radius: .75rem;
  background: var(--btn-bg);
  color: var(--btn-text);
  font-weight: 600;
  text-decoration: none;
  transition: opacity .2s, transform .2s;
}

.noah-btn:hover {
  opacity: 0.9;
  transform: translateY(-2px);
}

/* ============================
   Sections
============================ */
.noah-section {
  padding: 5rem 1rem 2rem;
}

.noah-section h2 {
  font-size: 2.2rem;
  text-align: center;
  margin-bottom: 1rem;
  color: var(--text-primary);
}

.noah-lead {
  font-size: 1.15rem;
  color: var(--text-secondary);
  text-align: center;
  max-width: 650px;
  margin: 0 auto 3rem;
  line-height: 1.6;
}

/* ============================
   Feature List (FIXED)
============================ */
.noah-feature-list {
  max-width: var(--feature-max-width);
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  gap: 2.5rem;
}

.noah-feature {
  display: flex;
  align-items: center;          /* ✅ vertical alignment FIX */
  gap: 1.5rem;
}

.noah-feature-icon {
  width: 52px;
  height: 52px;
  min-width: 52px;              /* ✅ prevents squeezing */
  border-radius: 14px;
  background: var(--accent-soft);
  display: flex;
  align-items: center;
  justify-content: center;
}

.noah-feature-icon svg {
  width: 22px;
  height: 22px;
  stroke-width: 2.4;
  color: var(--accent);
  stroke: var(--accent);
}

.noah-feature-content h3 {
  font-size: 1.3rem;
  margin: 0 0 0.4rem 0;
  color: var(--text-primary);
}

.noah-feature-content p {
  margin: 0;
  color: var(--text-secondary);
  line-height: 1.6;
}

/* ============================
   Support Links (RESTORED)
============================ */
.noah-link-grid {
  max-width: 750px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px,1fr));
  gap: 2rem;
}

.noah-link-card {
  background: var(--card-bg);
  border: 1px solid var(--card-border);
  border-radius: 16px;
  padding: 1.5rem;
}

.noah-link-card h3 {
  display: flex;
  align-items: center;
  gap: 0.6rem;
  margin-bottom: 0.4rem;
  font-size: 1.3rem;
  color: var(--text-primary);
}

.noah-link-card p {
  margin: 0.4rem 0 0;
}

.noah-link-card p a {
  text-decoration: none;
  color: var(--accent);
  font-weight: 500;
}

.noah-link-card p a:hover {
  opacity: 0.85;
}

/* ============================
   Mobile Tweaks
============================ */
@media (max-width: 640px) {
  .noah-feature-list {
    gap: 2rem;
  }
  .noah-feature-icon {
    width: 60px;
    height: 60px;
    min-width: 60px;
  }
}
</style>
</head>

<body class="noah-page">

<!-- HERO -->
<section class="noah-hero">
  <div class="noah-hero-content">
    <div style="display:flex; align-items:center; gap:0.75rem;">
      <img src="/Images/Apps/noah/noah-app-icon.png" alt="Noah App Icon" style="width:3rem;border-radius: 12px;">
      <span style="font-size:2.5rem; font-weight:700; color:var(--text-primary);">Noah</span>
    </div>

    <h1>Baby Feed & Sleep Tracker</h1>
    <p>
      Noah helps you track feedings and sleep with easiness.
      One-tap logging, friendly reminders and an easy history view.
      All designed for tired parents who need simplicity, not clutter.
    </p>

    <a href="localhost" style="display: inline-block;">
    <img src="https://toolbox.marketingtools.apple.com/api/v2/badges/download-on-the-app-store/white/en-us" alt="Download on the App Store" style="width: 200px; height: auto; vertical-align: middle; object-fit: contain;">
    </a>
  </div>

  <div class="noah-hero-image">
    <img src="/Images/Apps/noah/app-overview-with-data.png" alt="Noah App Screenshot">
  </div>
</section>

<!-- FEATURES -->
<section class="noah-section">
  <h2>Core Features</h2>
  <p class="noah-lead">
    Designed to be fast, calming and intuitive, so that you can focus on what matters.
  </p>

  <div class="noah-feature-list">
    <div class="noah-feature">
      <div class="noah-feature-icon"><i data-feather="clock"></i></div>
      <div class="noah-feature-content">
        <h3>One-Tap Tracking</h3>
        <p>Start logging sleep or feeding instantly with Left, Right, Bottle, or Sleep options.</p>
      </div>
    </div>

    <div class="noah-feature">
      <div class="noah-feature-icon"><i data-feather="smartphone"></i></div>
      <div class="noah-feature-content">
        <h3>Live Activity</h3>
        <p>Monitor feedings or naps directly on the Lock Screen or Dynamic Island.</p>
      </div>
    </div>

    <div class="noah-feature">
      <div class="noah-feature-icon"><i data-feather="eye"></i></div>
      <div class="noah-feature-content">
        <h3>Know What Happened Last</h3>
        <p>See “Just now” or “12 min ago” and more with friendly time labels.</p>
      </div>
    </div>

    <div class="noah-feature">
      <div class="noah-feature-icon"><i data-feather="shuffle"></i></div>
      <div class="noah-feature-content">
        <h3>Left / Right Tracking</h3>
        <p>Noah remembers which side you last used, so that you know which one to use next time.</p>
      </div>
    </div>

    <div class="noah-feature">
      <div class="noah-feature-icon"><i data-feather="edit"></i></div>
      <div class="noah-feature-content">
        <h3>Edit Anytime</h3>
        <p>Fix start time, duration or activity of any entry in your history log.</p>
      </div>
    </div>

    <div class="noah-feature">
      <div class="noah-feature-icon"><i data-feather="bell"></i></div>
      <div class="noah-feature-content">
        <h3>Gentle Reminders</h3>
        <p>A reminder notifies you based on your given interval, in order to know when to change side.</p>
      </div>
    </div>
  </div>
</section>

<!-- PRIVACY -->
<section class="noah-section">
  <h2>Privacy First</h2>
  <p class="noah-lead">
    Noah keeps everything on your device. No accounts, no analytics, no tracking.
  </p>
</section>

<!-- SUPPORT -->
<section class="noah-section">
  <h2>Help & Documentation</h2>
  <p class="noah-lead">Learn more or get support when you need it.</p>

  <div class="noah-link-grid">
    <div class="noah-link-card">
      <h3><i data-feather="help-circle"></i> FAQ</h3>
      <p><a href="/noah/faq">Read common questions</a></p>
    </div>

    <div class="noah-link-card">
      <h3><i data-feather="mail"></i> Support</h3>
      <p><a href="/noah/support">Contact support</a></p>
    </div>

    <div class="noah-link-card">
      <h3><i data-feather="shield"></i> Privacy Policy</h2>
      <p><a href="/noah/privacy">Read privacy details</a></p>
    </div>
  </div>
</section>

<script>
  feather.replace();
</script>

</body>
</html>
