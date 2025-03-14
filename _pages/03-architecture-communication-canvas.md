---
title: Architecture Communication Canvas
layout: splash
permalink: /architecture-communication-canvas
header:
  overlay_image: /images/splash/acc-splash.webp
  overlay_filter: rgba(0, 0, 0, 0.6)
excerpt: "**The shortest possible description of your architecture**"
---


## Structure of the Architecture Communication Canvas (ACC)


Click on an element to see a more detailed description, or just scroll down.

<div class="grid-container architecture-communication-canvas">

  <a href="#value" class="part requirement value">
  <div class="flex row space-between">
  <div class="flex column">
    <strong>Value Proposition</strong><br>
     <small>
      What is the core business case or economic driver?
     </small>
  </div>
  <i class="fa fa-briefcase icon" aria-hidden="true"></i>
  </div>
  </a>


  <a href="#stakeholder" class="part requirement stakeholder">
    <div class="flex row space-between">
      <div class="flex column ">
        <strong>Key Stakeholder</strong><br />
        <small>
          For whom are we creating value?<br />
          Who are the customers?<br />
          Who is paying?<br />
          Who is contributing?<br />
        </small>
      </div>
      <i class="fa fa-user-friends icon" aria-hidden="true"></i>
    </div>
  </a>

  <a href="#functions" class="part requirement functions">
    <div class="flex row space-between">
      <div class="flex column">
        <strong>Core Functions</strong><br>
        <small>
          Most important functions?<br />
          Supported processes or activities<br />
        </small>
      </div>
        <i class="fa fa-list-ul icon" aria-hidden="true"></i>
    </div>
  </a>

<a href="#quality" class="part requirement quality">
  <div class="flex row space-between">
    <div class="flex column">
      <strong>Quality Requirements</strong><br>
      <small>
    Speed, scalability, reliability, usability, security, 
    safety, capacity, flexibility or similar.
      </small>
    </div>
      <i class="fa fa-certificate icon" aria-hidden="true"></i>
  </div>
</a>
  
  
  
<a href="#context" class="part requirement context">
  <div class="flex row space-between">
    <div class="flex column">
      <strong>Business Context</strong><br>
      <small>Important external interfaces
    or neighbouring systems,<br>
    including important actors or user roles
      </small>
  </div>
      <i class="fa fa-link icon" aria-hidden="true"></i>
  </div>
</a>
  

<a href="#components" class="part solution components">
  <div class="flex row space-between">
    <div class="flex column">
      <strong>Components/Modules</strong><br>
      <small>
        Major building blocks of the system,<br>
        important subsystems, modules, services.
      </small>
    </div>
      <i class="fas fa-shapes icon" aria-hidden="true"></i>
  </div>
</a>  


<a href="#decisions" class="part solution decisions">
  <div class="flex row space-between">
    <div class="flex column">
      <strong>Core Decisions - <br />Good or Bad</strong><br />
      <small>
        Which decisions lead to the current state?
      </small>
    </div>
      <i class="fas fa-arrows-alt-v icon" aria-hidden="true"></i>
  </div>
</a>
  
  
<a href="#technology" class="part solution technology">
  <div class="flex row space-between">
    <div class="flex column">
      <strong>Technologies</strong><br>
      <small>
        Important technologies used for development and operation.
      </small>
  </div>
      <i class="fas fa-tools icon" aria-hidden="true"></i>
  </div>
</a>
  
<a href="#risks" class="part problem risks">
  <div class="flex row space-between">
    <div class="flex column">
      <strong>Risks and Missing Information</strong><br>
      <small>
        Potential problems and risks?<br>
        What information is missing or has gotten lost?<br>
        What is hindering the team from delivering better value faster?<br>
      </small>
    </div>
      <i class="fas fa-question icon" aria-hidden="true"></i>
  </div>
</a>

</div>


<div class="legend">
  <div class="placeholder">
  </div>

  <div class="entries">
    <div class="square green">
    </div>
    <span class="label">
      Requirements: What should the system do?
    </span>
    <div class="square blue">
    </div>
    <span class="label">
      Solution: How is it done? How does it work?
    </span>
    <div class="square red">
    </div>
    <span class="label">
      What are known problems and risks?
    </span> 
  </div>
</div>


<a id="value"/>
### Value Proposition

Answer at least on of the following questions:

* What are the systems' major objectives?
* What value does the system deliver to the customer?
* What are the major business goals of the system?
* Why is the system build and operated?
* What is its core responsibility?

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

<a id="stakeholder"/>
### Key Stakeholder

Identify the most important stakeholders of the system:

* For whom are we creating value?
* Who is paying for development?
* Who is paying for operations?
* Who are our most important customers?
* Who are our most important contributors?

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

<a id="functions"/>
### Core Functions

* What are the most important functions, features or use-cases of the system?
* What activities or processes does it offer?
* What is the major use-case?
* Which of the functions generates high value for stakeholders?
* Which functions are risky, dangerous or critical?

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

<a id="quality"/>
### Quality Requirements

What are the important quality goals and requirements, like speed, scalability, reliability, usability, security, safety, capacity or similar.

See the companion [site on quality](https://quality.arc42.org), where you find detailed descriptions of more than 130 quality attributes, plus numerous examples of specific quality requirements.

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

<a id="context"/>
### Business Context

Which external systems, interfaces or neighbouring systems...

* are the most important data sources?
* are the most important data sinks?
* determine our reliability, availability, performance or other critical quality requirements?
* are highly volatile or risky?
* have high operational cost (e.g. pay-per-use)?
* are difficult to implement, operate or monitor?

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

<a id="decisions"/>
### Core Decisions - Good or Bad

Which decisions... 

* lead to the current state of the system?
* are you especially proud of?
* turned out to be dubious, wrong or painful?
* can't you understand from todays' perspective?

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

<a id="components"/>
### Components / Modules

What are the major building blocks of the system
(e.g. modules, subsystems, packages, components, services)?

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

<a id="technology"/>
### Technologies

What are the most important technologies used for development and operation of the system?

For example:
* programming languages and technologies
* frameworks (like SpringBoot, .NET, Flask, Django)
* database or middleware
* technical infrastructure like physical hardware, server, datacenter, cloud provider, hyperscaler or similer
* operating technologies and environment
* monitoring and administration technologies and environment  

See the companion [Technology Stack Canvas](https://techstackcanvas.io/).

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

<a id="risks"/>
### Risks and Missing Information

* What are known problems?
* Which parts of the system are known to cause problems during implementation, test or operation?
* Which processes (requirements, architecture/implementation, test, rollout, administration, operation) cause problems?
* What hinders development or value-generation?
* What would you like to know about the system, but cannot currently find out?
* What is hindering the team from delivering better value faster?

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

## Download

Visit the [downloads-page](/downloads#architecture-communication-canvas-acc) for downloading the ACC Canvas.