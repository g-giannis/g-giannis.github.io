---
title: Noah — FAQ
description: Frequently asked questions about the Noah baby feed & sleep tracker.
---

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Noah — FAQ</title>
  <script src="https://unpkg.com/feather-icons"></script>

  <style>
      /* ============================================
       Improved Light Mode Styling
    ============================================ */
    @media (prefers-color-scheme: light) {
      
      :root {
        --text-primary: #1a1a1a;          /* deeper, more premium black */
        --text-secondary: #555;           /* softer but readable */
        --accent: #4a85ff;                /* warm iOS-style blue */
        --accent-soft: rgba(74,133,255,0.14); /* nicer soft tint */
        
        --btn-bg: #1a1a1a;
        --btn-text: #fff;
      }

      body {
        background: #fafafa;              /* subtle off-white (Apple uses this) */
      }

      .noah-hero-content h1 {
        color: #000;
      }

      .noah-hero-content p {
        color: #444;
      }

      .noah-feature-icon {
        background: rgba(74,133,255,0.10); /* lighter, friendlier */
        border: 1px solid rgba(74,133,255,0.18);
      }

      .noah-feature-icon svg {
        color: #4a85ff;                   /* rich blue accent */
        stroke: #4a85ff;
      }

      .noah-feature-content h3 {
        color: #111;                      /* stronger headings */
      }

      .noah-feature-content p {
        color: #555;                      /* softer paragraph */
      }

      .noah-link-card {
        background: rgba(0,0,0,0.05);      /* cleaner light card */
        border: 1px solid rgba(0,0,0,0.05);
      }
    }

    .noah-wrapper {
      max-width: 800px;
      margin: 0 auto;
      padding: 3rem 1rem;
    }
    .noah-faq h1 {
      text-align: center;
      margin-bottom: 2rem;
    }
    .noah-q {
      font-size: 1.25rem;
      font-weight: 600;
      margin-top: 2rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }
    .noah-a {
      margin-top: 0.5rem;
      color: var(--text-secondary);
      font-size: 1.05rem;
      line-height: 1.6;
    }
  </style>
</head>

<body>
<div class="noah-wrapper noah-faq">
  <h1>Noah Baby Feed & Sleep</h1>
  &nbsp
  <h1>Frequently Asked Questions</h1>
  &nbsp
  <div>
    <div class="noah-q"><i data-feather="help-circle"></i>Where is my data stored?</div>
    <div class="noah-a">All data is stored locally on your iPhone. Noah does not upload or sync your data anywhere unless you manually export a backup.</div>
  </div>

  <div>
    <div class="noah-q"><i data-feather="clock"></i>How do I start tracking a feed?</div>
    <div class="noah-a">Tap the + button, then select Left, Right, or Bottle. Tracking begins instantly and can be edited at any time.</div>
  </div>

  <div>
    <div class="noah-q"><i data-feather="moon"></i>How do I track sleep?</div>
    <div class="noah-a">Tap the + button and select Sleep. Noah will track the duration until you stop the timer.</div>
  </div>

  <div>
    <div class="noah-q"><i data-feather="shuffle"></i>How does Left / Right alternation work?</div>
    <div class="noah-a">When you log a Left or Right feeding, Noah automatically remembers which side was last used and it shows it in the overview page. So that the next time you know which side to use.</div>
  </div>

  <div>
    <div class="noah-q"><i data-feather="edit"></i>Can I edit a session?</div>
    <div class="noah-a">Yes. Open the log view, tap on any entry, and adjust the date, time, duration or activity as needed.</div>
  </div>

  <div>
    <div class="noah-q"><i data-feather="bell"></i>What are gentle reminders?</div>
    <div class="noah-a">You can set a timer to notify you after a chosen number of minutes. This is helpful during breastfeeding in order to remind you to change side.</div>
  </div>

  <div>
    <div class="noah-q"><i data-feather="folder"></i>Can I export my data?</div>
    <div class="noah-a">Yes, you can manually export a backup file and store it wherever you prefer, including iCloud Drive or a computer.</div>
  </div>

  <div>
    <div class="noah-q"><i data-feather="mail"></i>How can I contact support?</div>
    <div class="noah-a">You can contact me at <a href="mailto:contact@ggiannis.com">contact@ggiannis.com</a>. I will be glad to help.</div>
  </div>

</div>

<script>
  feather.replace();
</script>

</body>
</html>
