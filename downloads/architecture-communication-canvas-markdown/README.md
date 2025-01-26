---
title: Architecture Communication Canvas
hide_title: true
---

This is a template for a Architecture Communication Canvas (ACC, see [https://canvas.arc42.org](https://canvas.arc42.org) using a code based approach with Markdown, HTML/CSS and mermaid diagrams.

## Getting Started
To get started with this template, you'll need a few VSCode extensions:

1. **Markdown Preview Enhanced** - For rendering the markdown with embedded HTML/CSS
2. **Mermaid Preview** - For previewing mermaid diagrams

You can create a `.vscode/extensions.json` file in your project root with these recommended extensions:
```json
{
    "recommendations": [
        "bierner.markdown-mermaid",
        "yzhang.markdown-all-in-one"
    ]
} 
```

Then, copy and paste the template below into a markdown file, e.g. `acc.md` and open the markdown preview.

## Template
```markdown
<style>
.acc-container { font-family: Arial, sans-serif; max-width: 1200px; margin: 0 auto; }
.acc-title { text-align: center; margin-bottom: 30px; }
.acc-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 20px; }
.acc-column { display: flex; flex-direction: column; gap: 20px; }
.acc-box { padding: 20px; border: 2px solid currentColor; border-radius: 5px; }
.acc-box-title { font-size: 26px; margin-top: 0; }
.acc-footer { font-size: 12px; margin-top: 20px; }
.acc-inner-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; }
.acc-metadata-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 10px; margin-bottom: 20px; }
.acc-metadata-box { 
    padding: 10px; 
    border: 1px solid currentColor; 
    border-radius: 3px;
}
.acc-metadata-label {
    font-size: 14px;
    margin: 0;
    padding: 0;
}
.acc-box-title i { 
    margin-right: 16px;
    width: 24px;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<div class="acc-container">
    <div class="acc-metadata-grid">
        <div class="acc-metadata-box">
            <p class="acc-metadata-label">System:</p>
        </div>
        <div class="acc-metadata-box">
            <p class="acc-metadata-label">Created by:</p>
        </div>
        <div class="acc-metadata-box">
            <p class="acc-metadata-label">Created for:</p>
        </div>
        <div class="acc-metadata-box">
            <p class="acc-metadata-label">Date / Iteration:</p>
        </div>
    </div>
    <div class="acc-grid">
        <div class="acc-column">
            <div class="acc-inner-grid">
                <div class="acc-box">
                    <h2 class="acc-box-title"><i class="fas fa-briefcase"></i>Value Proposition</h2>
                    <p>Major objectives.<br>What value does the system deliver?<br>What are the major business goals?</p>
                </div>
                <div class="acc-box">
                    <h2 class="acc-box-title"><i class="fas fa-list"></i>Core Functions</h2>
                    <p>What are the most important functions?<br>What activities or processes does it offer?</p>
                </div>
                <div class="acc-box">
                    <h2 class="acc-box-title"><i class="fas fa-users"></i>Key Stakeholder</h2>
                    <p>For whom are we creating value?<br>Who is paying for development?<br>Who is paying for operations?<br>Who are our most important customers?<br>Who are our most important contributors?</p>
                </div>
                <div class="acc-box">
                    <h2 class="acc-box-title"><i class="fas fa-star"></i>Quality Requirements</h2>
                    <p>Speed, scalability, reliability, usability, security,<br>safety, capacity or similar</p>
                </div>
            </div>
            <div class="acc-box">
                <h2 class="acc-box-title"><i class="fas fa-link"></i>Business Context</h2>
                <p>What are the most important external interfaces or neighboring systems?</p>
                <div class="mermaid">
                    graph LR
                        Users((Users))-->|use|System
                        System-->|authenticates via|AuthService
                        System-->|stores data in|Database[(Database)]
                        System-->|sends emails via|EmailService
                        System-->|processes payments via|PaymentGateway
                </div>
            </div>
        </div>
        <div class="acc-column">
            <div class="acc-inner-grid">
                <div class="acc-box">
                    <h2 class="acc-box-title"><i class="fas fa-up-down"></i>Core Decisions - Good or Bad</h2>
                    <p>Which decisions lead to the current state of the system?</p>
                </div>
                <div class="acc-box">
                    <h2 class="acc-box-title"><i class="fas fa-screwdriver-wrench"></i>Technologies</h2>
                    <p>Important technologies used<br>for development and operation</p>
                </div>
            </div>
            <div class="acc-box">
                <h2 class="acc-box-title"><i class="fas fa-cubes"></i>Components / Modules</h2>
                <p>Major building blocks of the system</p>
            </div>
        </div>
    </div>
    <div class="acc-box">
        <h2 class="acc-box-title"><i class="fas fa-question"></i>Core Risks and Missing Information</h2>
        <p>Potential problems and risks?<br>What information is missing or has gotten lost?<br>What is hindering the team from delivering better value faster?</p>
    </div>
    <div class="acc-footer">
        <img src="https://mirrors.creativecommons.org/presskit/buttons/88x31/png/by-sa.png" alt="CC BY-SA License" style="height: 20px;">
        <span style="margin-left: 10px;">Software Architecture Canvas is licensed under Attribution-ShareAlike 4.0 International. Icons by <a href="https://fontawesome.com">Font Awesome</a> (CC BY 4.0)</span>
        <span style="float: right;"><a href="https://canvas.arc42.org" style="text-decoration: none;">https://canvas.arc42.org</a></span>
    </div>
</div>
```

## Rendered Canvas
![Rendered ACC Template](/downloads/architecture-communication-canvas-markdown/rendered-template.png)

## License
### Creative Commons Attribution-ShareAlike 4.0 International License

#### Main Work

This work is derived from the Architecture Communication Canvas [https://canvas.arc42.org](https://canvas.arc42.org) 
by Gernot Starke, Patrick Roos and arc42 Contributors, licensed under 
Creative Commons Attribution-ShareAlike 4.0 International License.

To view a copy of this license, visit:
[https://creativecommons.org/licenses/by-sa/4.0/](https://creativecommons.org/licenses/by-sa/4.0/)

#### Third Party Licenses

##### Font Awesome Icons

The icons used in this project are from Font Awesome Free and are licensed under the Creative Commons Attribution 4.0 International License (CC BY 4.0).

Font Awesome Free License: [https://fontawesome.com/license/free](https://fontawesome.com/license/free)
CC BY 4.0 License: [https://creativecommons.org/licenses/by/4.0/](https://creativecommons.org/licenses/by/4.0/)

