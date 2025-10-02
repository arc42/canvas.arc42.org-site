---
title: Architecture Inception Canvas
layout: splash
permalink: /architecture-inception-canvas
header:
  overlay_image: /images/splash/aic-splash.webp
  overlay_filter: rgba(0, 0, 0, 0.6)
excerpt: '**An Efficient and Collaborative Way to Define your Software Architecture Playground**'
---

## Structure of the Architecture Inception Canvas (AIC)

Click on an element to see a more detailed description, or just scroll down.

<div class="please-use-landscape">
  <strong>Please use the landscape mode of your phone to see the canvas!</strong>
  <i class="fa fa-repeat icon" aria-hidden="true"></i>
</div>

<div class="grid-container architecture-inception-canvas">
  
  <a href="#business-case-here-is-your-why" class="part requirement business-case">
    <div class="flex row space-between">
      <div class="flex column">
        <strong>Business Case</strong>
        <small>
          Brief description of the business case or economic driver behind the software system.
        </small>
      </div>
      <i class="fa fa-briefcase icon" aria-hidden="true"></i>
    </div>
  </a>

  <a href="#functional-overview-this-is-your-product-box" class="requirement part functional-overview">
    <div class="flex row space-between">
      <div class="flex column">
        <strong>Functional Overview</strong>
        <small>
          The most important functional requirements at a high level.
        </small>
      </div>
      <i class="fa fa-list-ul icon" aria-hidden="true"></i>
     </div>
  </a>

  <a href="#quality-goals-the-key-drivers-of-architecture" class="requirement quality-goals part">
    <div class="flex row space-between">
      <div class="flex column">
        <strong>Quality Goals</strong>
        <small>
          The three most important quality goals for the architecture, which have the highest priority for the most important stakeholder.
        </small>
      </div>
      <i class="fa fa-certificate icon" aria-hidden="true"></i>
    </div>
  </a>

  <a href="#architectural-hypotheses-create-your-first-high-level-architectural-hypotheses-based-on-your-current-knowledge" class="solution architecture-hypotheses part">
    <div class="flex row space-between">
      <div class="flex column">
        <strong>Architecture Hypotheses</strong>
        <small>
          Resulting architectureal hypotheses and important, expensive, large-scale or risiky decisions, including justifications.
        </small>
      </div>
      <i class="fa fa-map-signs icon" aria-hidden="true"></i>
    </div>
  </a>

  <a href="#challenges-and-risks-what-are-the-upcoming-challenges-and-the-resulting-risks" class="problem technical-challenges part">
    <div class="flex row space-between">
      <div class="flex column">
        <strong>Technical Challenges & Risks</strong>
        <small>
          Identified current known challenges and technical risks
        </small>
      </div>
      <i class="fa fa-exclamation-triangle icon" aria-hidden="true"></i>
    </div>
  </a>

  <a href="#business-context-explore-the-context-and-get-the-scope" class="requirement business-context part">
    <div class="flex row space-between">
      <div class="flex column">
        <strong>Business Context</strong>
        <small>
          Separate your system under construction as a black box from all its communication partners. Communication partners are neighbouring external systems and users.
        </small>
      </div>
      <i class="far fa-map icon" aria-hidden="true"></i>
    </div>
  </a>

  <a href="#organisational-and-technical-constraints-your-limitation-of-freedom" class="requirement organisational-constraints part">
    <div class="flex row space-between">
      <div class="flex column">
        <strong>Organisational Constraints</strong>
        <small>
          Any organisational requirement that limits the software architects freedom of decision.
        </small>
      </div>
      <i class="fa fa-sitemap icon" aria-hidden="true"></i>
    </div>
  </a>

  <a href="#organisational-and-technical-constraints-your-limitation-of-freedom" class="requirement technical-constraints part">
   <div class="flex row space-between">
      <div class="flex column">
        <strong>Technical Constraints</strong>
        <small>
          Any technical requirement that limits the software architects freedom of decision.
        </small>
      </div>
      <i class="fa fa-cog gear icon" aria-hidden="true"></i>
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
      Goals: What should the software do?
    </span>
    <div class="square blue">
    </div>
    <span class="label">
      Solution: How we can achieve it?
    </span>
    <div class="square red">
    </div>
    <span class="label">
      Assessment: How do we evaluate the situation?
    </span> 
  </div>
</div>

<script>

  function architectureInceptionCanvas() {
    return document.querySelector('.architecture-inception-canvas')
  }

  function legend() {
    return document.querySelector('.legend')
  }

  function portraitWarning() {
    return document.querySelector('.please-use-landscape');
  }

  function hideCanvas() {
    architectureInceptionCanvas().style.display = 'none';
    legend().style.display = 'none';
    portraitWarning().style.display = 'flex';
  }

  function showCanvas() {
    architectureInceptionCanvas().style.display = 'grid';
    legend().style.display = 'grid';
    portraitWarning().style.display = 'none';
  }

  function checkLandscape() {
    const landscape = !window.matchMedia("(orientation: portrait)").matches;
      if(landscape) {
        showCanvas();
      } else {
        hideCanvas();
      }
  }

  checkLandscape();

  window.matchMedia("(orientation: portrait)").addEventListener("change", _ => {
    checkLandscape();
  });
</script>

#### Business Case: Here is your WHY

If the business needs to make money, there is an economic driver and a business case behind every software initiative. If not, it's a hobby or an NPO project.

> And it all start with WHY. - Start with WHY.

A common pitfall is that the development team, or worse, the entire product team, is unaware of the specific economic drivers and business case behind these software initiatives.

As a team member, if you don't know or can't explain the economic driver or business case behind the software initiative, you don't need to proceed. Then you're often unable to define a meaningful playground for your software architecture because you don't know what you're trying to achieve for your business.

In our experience, it's so important that **every team member knows the economic driver and can explain the business case** behind a software initiative.

With this section of the Architecture Inception Canvas, you put the entrepreneurial hat on each team member and empower them to think entrepreneurially.

> With this section of the Software Architecture Canvas, you put the entrepreneurial hat on each team member and empower them to think entrepreneurially.

This promotes the intrinsic motivation of each team member and helps in the daily macro and micro decision making in the realisation of the software product.

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

### Functional Overview: This is your product box

As you work out the functional overview of the software initiative as a product team, imagine a product box of your software - what is on your software box?

> What is on your software product box?

Think the product box to get the answers to the following questions:

- What business value does the software deliver?
- What are the higher-level business functions?

With the answers to these questions, you can describe the key functional requirements at a high level.

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

### Quality Goals: The key drivers of architecture

Here you work out the three most important quality goals of the stakeholders for the software system.

It's important that these quality goals are known by every team member because they shape your architecture.

The standard [ISO/IEC 25010](https://iso25000.com/index.php/en/iso-25000-standards/iso-25010) provides an overview of possible quality attributes of interest, the modern arc42 [quality model (Q42)](https://quality.arc42.org) collects more than 130 quality attributes with extensive explanation and examples.

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

### Business Context: Explore the context and get the scope

Business context focuses on your system as a black box. Attention is focused on the system's environment and how the system interacts with all external systems within it.

With the business context, you can identify the communication paths and thus potential technical risks.

It's also a good way to discuss with various stakeholders the scope of the system and the communication paths to various external systems.

When trying to work out the business context, try to identify the users of your system and all neighbouring systems.

In this part, you're to create a business-oriented context view to get a common view of the business scope of the system. So focus on a common understanding and use this part to develop a tool to communicate the system context to other stakeholders inside and outside the team.

This business-oriented scope is the basis for a later technical context. Here you elaborate the center of your software architecture activities.

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

### Organisational and Technical Constraints: Your limitation of freedom

Organisational and technical constraints determine the degree of your freedom to make decisions as an engineering team.

In this part you work out all the requirements that limit your freedom as a product team in developing the software product.

**Organisational constraints**

Organisational constraints often include time and money. We've also seen that there are constraints on the methodologies used (such as SAFe, Scrum, ...) or techniques.

**Technical constraints**

In larger enterprises, there are often a lot of technical constraints. There is often an overarching architecture committee that sets the standards for technology choices.

For example, if you decide to build a single-page application, the overarching architecture committee will set Angular as the SPA framework, so there are expertise synergies between teams.

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

### Architectural Hypotheses: Create your first high-level architectural hypotheses based on your current knowledge

Congratulations - you've created your architectural playground.

Now you can create your first architectural hypotheses based on your current team knowledge.

**Be aware**: This is about higher-level architectural assumptions, not micro-decisions like design questions.

Ideally, you can turn your architectural assumptions into draft architecture decision records.

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

### Challenges and Risks: What are the upcoming challenges and the resulting risks?

Based on the playground you have created, such as business context and scope, quality goals and constraints, you can capture the upcoming challenges and the resulting risks.

It's very important to work this out, evaluate it continuously, and communicate it to the key stakeholders in the system.

This section answers the question of how you evaluate the current situation in relation to the elaborated architectural playground.

<a href="#" class="btn btn--primary btn-subtle">Back to Top &#8593;</a>

## Download

Visit the [downloads-page](/downloads#architecture-inception-canvas-aic) for downloading the AIC Canvas.