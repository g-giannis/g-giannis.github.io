 
<style>
:root {
    --background-light: #ffffff;
    --background-dark: #1e1e1e;
    --text-light: #333333;
    --text-dark: #c9c9c9;
    --border-light: #dddddd;
    --border-dark: #444444;
    --shadow-light: rgba(0, 0, 0, 0.1);
    --shadow-dark: rgba(255, 255, 255, 0.1);
    --accent-color: #c9e4d2;
}

body.light-theme {
    --background: var(--background-light);
    --text: var(--text-light);
    --border: var(--border-light);
    --shadow: var(--shadow-light);
}

body.dark-theme {
    --background: var(--background-dark);
    --text: var(--text-dark);
    --border: var(--border-dark);
    --shadow: var(--shadow-dark);
}

.skillsContainer {
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
    justify-content: space-between;
    margin-top: 30px;
}
.skillsContainer > div {
    flex: 1 1 calc(33.333% - 30px);
    border: 1px solid var(--border);
    border-radius: 10px;
    background-color: var(--background);
    box-shadow: 0 4px 8px var(--shadow);
    padding: 0;
    transition: background-color 0.3s, border-color 0.3s, box-shadow 0.3s;
}
.skillsContainer h3 {
    margin-top: 0;
    color: var(--text);
    padding-bottom: 10px;
    margin-bottom: 20px;
}
.skillsContainer ul {
    list-style-type: none;
    padding: 0;
}
.skillsContainer li {
    margin: 15px 0;
    color: var(--text);
    display: block;
}
.skillsContainer li span {
    font-weight: bold;
    display: block;
    margin-left: 0px;
}
.skillsContainer li::before {
    margin-right: 10px;
    font-size: 1.4em;
    display: inline-block;
    width: 30px;
}

@media (max-width: 768px) {
    .skillsContainer > div {
        flex: 1 1 calc(50% - 30px);
    }
}
@media (max-width: 480px) {
    .skillsContainer > div {
        flex: 1 1 100%;
    }
}

</style>

<div class="skillsContainer">
    <div>
        <h3>Personal Skills</h3><hr>
        <ul>
            <li>⛹️ Team Player</li>
            <li>💪 Work commitment</li>
            <li>🤓 Open for constructive feedback and willing to learn</li>
            <li>🗂️ Organizational Skills</li>
            <li>🎯 Attention to Detail</li>
            <li>🕖 Excellent time management</li>
        </ul>
    </div>
    <div>
        <h3>Languages</h3><hr>
        <ul>
            <li><span>🇬🇧</span> Proficient (B2)</li>
            <li><span>🇩🇪</span> Proficient (B2)</li>
            <li><span>🇬🇷</span> Mother Language</li>
        </ul>
    </div>
    <div>
        <h3>Technical Skills</h3><hr>
        <ul>
            <li><span>🌱 Experience (13 years)</span>iOS, macOS (strong knowledge)</br> tvOS, watchOS (basic) </li>
            <li><span>🔄 Cross-Platform</span>Xamarin (iOS, Android), Kotlin-Mutliplatform</li>
            <li><span>💻 Programming Languages</span>Swift (7 years), Objective-C (5 years), C# (2 years), Kotlin, Bash, Ruby, C++</li> 
            <li><span>🧪 Testing</span>Unit Tests, TDD, Automated UI Tests</li>
            <li><span>🌍 Web Services</span>REST, SOAP, OAuth</li>
            <li><span>🗄️ Databases</span>CoreData, NoSQL (Firebase, Couchbase), SQLite (C++), Realm</li>
            <li><span>🏛️ Architectures</span>MVVM, MVC, Clean Architecture, Redux</li>
        </ul>
    </div>
</div>

<br/><br/>
# References 
<br/>

<img src="/Images/About/appdev-logo.png" style="max-width:120px; max-height:64px; margin-bottom: 0px;" alt="App Dev" title="App Dev" /> ### IBM Health Platform
01/02/2022 - Present<br/><br/>
 
## Key Facts
- Sharing knowledge through Tech Talks
- Leading technically an iOS Team of 7 developers 
- Developing using SwiftUI, Combine, PromiseKit, new Swift Concurrency API
- TDD with strict Pull Request rules (min. 80% code coverage)
- Fully WCAG compliant features (VoiceOver, Full Keyboard Access, Minimum Contrast) 

---

<img src="/Images/About/check24-logo.png" style="max-width:100px; max-height:54px; margin-bottom: -10px;" alt="Check24" title="Check24" /> 
01/12/2018 - 31/12/2021<br/><br/>
Worked on Germany's best comparison App with **over than 1 Million active users** in the mobile communications department.
With the [CHECK24 iOS App](https://apps.apple.com/us/app/check24/id719610089) you can compare prices and conditions in real time about Insurances (car insurance, private liability insurance), Credit (daily allowance & credit cards), DSL & Mobile communication contracts.

<br/>    
## Key Facts
- iOS Tech-Lead and (Junior, Senior) mentor 
- Modernized the App from UIKit MVVM to SwiftUI MVVM-C with Reactive Components using Combine
- Implemented dynamic generated XCTestCases from Gherkin language (Given, When, Then) 
- Improved the architecture of the old app
- Used SOLID Principles as long as TDD for the daily app development 

---

<br/>
<img src="/Images/About/ebf-logo.png" style="max-width:120px; max-height:64px; margin-bottom: 10px;" alt="EBF" title="EBF" />

01/10/2015 - 31/11/2018<br/><br/>
 
## Key Facts
- Senior Software Developer
- Ownership of deliveries (technical organization & execution)  
- Developed EBF Contacts App in Xamarin (iOS & Android) using Contacts Framework and CouchDB Lite as Database ([App Store](https://apps.apple.com/de/app/ebf-contacts/id1570229461?l=en)) 
- Developed EBF Files App (iOS & Android) to access corporate data. Some of the feature highlights are PDF, Office Editing and File Synchronisation ([App Store](https://apps.apple.com/de/app/ebf-files/id1450387478?l=en))
- Developed Enterprise Apps that leveraged IoT devices (Beacons) and wearables (Apple Watch)
- Proof of Concept macOS app in AppKit & Obj-C
- Maintained various apps
- Responsible also for CI (Jenkins) for signing, distributing Whitelabel apps to customers  

---

<br/>
<img src="/Images/About/solidapps-logo.png" style="max-width:120px; max-height:64px; margin-bottom: 10px;" alt="SolidApps" title="Solid Apps" /> 
01/11/2012 – 31/09/2015<br/><br/>

## Key Facts
- Mainly worked on the Bosch MySPIN Car Infotainement System [(read more)](https://www.bosch-mobility-solutions.com/en/solutions/infotainment/myspin/) 
- Maintained "Holidays And Vacations" App which helps tracking public holidays and much more [(App Store)](https://apps.apple.com/de/app/holidays-and-vacations/id352642945?l=en)
- Worked on sharing Database and Networking code across iOS & Android using C++  
- Occasionally developed also for Windows Phone

<div style="height:5px;"><br></div>
<br/>
