---
title: Architecture Inception Canvas
layout: splash
permalink: /architecture-inception-canvas
header:
  overlay_image: /images/splash/aic-splash.png
  overlay_filter: rgba(0, 0, 0, 0.6)
excerpt: '**An Efficient and Collaborative Way to Define your Software Architecture Playground**'
---

## Architecture Inception Canvas

The Architecture Inception Canvas is a collaborative technique for elaborating the software architecture playground of a software initiative. 

With this canvas, you can work efficiently, iteratively, and in a time-saving manner on the software architecture of your software products as a team sport.

![](images/canvas/architecture-inception-canvas.webp)

### Motivation

The situation that probably every software developer loves: the start of building a new system and the resulting technical questions and discussions:

* Do we take a micro services approach?
* Functional or object oriented?
* Do we follow the hexagonal architecture approach?
* Do we do an event-driven approach with CQRS?
* Or do we follow a serverless approach?
* Java, F#, Go or Rust?
* Azure, AWS or GCP?
* NoSQL vs. SQL? MongoDB vs. PostgreSQL?
* Angular vs. React vs. Solid?
* Docker vs. Podman?
* Continuous Integration and Deployment Pipelines? GitOps?

A lot of technical questions for technology lovers (like us :-)).

But wait... are these questions even relevant at the beginning of a software initiative?

In our roles as Software Architects, we've been involved with many new software initiatives with product teams.

And it's always the same traps that software development teams first fall into: The need to discuss these fancy technical and low-level architectural design topics.


> And it's always the same traps that software development teams first fall into: The need to discuss these fancy technical and low-level architectural design topics.

Yes, we as Software Developers also like to discuss this kind of technical stuff.

But these discussions are useless at the beginning of building a new system, because you have to define your engineering playground first.

If you don't know your playground, you have no chance to argue technical decisions.

Over the years, my experience has been that there are always the same questions that need to be discussed and answered across the product team before you start discussing technical things.

That's why we developed the Architecture Inception Canvas, which helps product teams lay the groundwork for software architecture in an _efficient_ and _collaborative_ way.

### The structure of the Architecture Inception Canvas

The Architecture Inception Architecture Canvas is divided into three main sections:

* **Goals**: What should the software do? (green)
* **Solution**: How can we achieve it? (blue)
* **Assessment**: How do we evaluate the situation? (red)

![](images/canvas/architecture-inception-canvas-regions.webp)

The Architecture Inception Canvas contains the following parts:

* [Business Case](#business-case-here-is-your-why)
* [Functional Overview](#functional-overview-this-is-the-most-important-part-on-your-product-box)
* [Quality Goals](#quality-goals-the-key-drivers-of-architecture)
* [Business Context](#business-case-here-is-your-why)
* [Organisational Contraints](#organisational-and-technical-constraints-your-limitation-of-freedom)
* [Technical Constraints](#organisational-and-technical-constraints-your-limitation-of-freedom)
* [Architectural Hypotheses](#architectural-hypotheses-create-your-first-high-level-architectural-hypotheses-based-on-your-current-knowledge)
* [Challenges & Risks](#challenges-and-risks-what-are-the-upcoming-challenges-and-the-resulting-risks)

#### Business Case: Here is your WHY

If the business needs to make money, there is an economic driver and a business case behind every software initiative. If not, it's a hobby or an NPO project.

> And it all start with WHY. - Start with WHY.

A common pitfall is that the development team, or worse, the entire product team, is unaware of the specific economic drivers and business case behind these software initiatives.

As a team member, if you don't know or can't explain the economic driver or business case behind the software initiative, you don't need to proceed. Then you're often unable to define a meaningful playground for your software architecture because you don't know what you're trying to achieve for your business.

In our experience, it's so important that **every team member knows the economic driver and can explain the business case** behind a software initiative.

With this section of the Architecture Inception Canvas, you put the entrepreneurial hat on each team member and empower them to think entrepreneurially.

> With this section of the Software Architecture Canvas, you put the entrepreneurial hat on each team member and empower them to think entrepreneurially.

This promotes the intrinsic motivation of each team member and helps in the daily macro and micro decision making in the realisation of the software product.

### Functional Overview: This is the most important part on your product box

As you work out the functional overview of the software initiative as a product team, imagine a product box of your software - what is on your software box?

> What is on your software product box?

Think the product box to get the answers to the following questions:

* What business value does the software deliver?
* What are the higher-level business functions?

With the answers to these questions, you can describe the key functional requirements at a high level.

### Quality Goals: The key drivers of architecture

Here you work out the three most important quality goals of the stakeholders for the software system.

It's important that these quality goals are known by every team member because they shape your architecture.

The standard [ISO/IEC 25010](https://iso25000.com/index.php/en/iso-25000-standards/iso-25010) provides a good overview of possible quality attributes of interest.


### Business Context: Explore the context and get the scope

Business context focuses on your system as a black box. Attention is focused on the system's environment and how the system interacts with all external systems within it.

With the business context, you can identify the communication paths and thus potential technical risks.

It's also a good way to discuss with various stakeholders the scope of the system and the communication paths to various external systems.

When trying to work out the business context, try to identify the users of your system and all neighbouring systems.

In this part, you're to create a business-oriented context view to get a common view of the business scope of the system. So focus on a common understanding and use this part to develop a tool to communicate the system context to other stakeholders inside and outside the team.

This business-oriented scope is the basis for a later technical context. Here you elaborate the center of your software architecture activities.

### Organisational and Technical Constraints: Your limitation of freedom

Organisational and technical constraints determine the degree of your freedom to make decisions as an engineering team.

In this part you work out all the requirements that limit your freedom as a product team in developing the software product.

**Organisational constraints**

Organisational constraints often include time and money. We've also seen that there are constraints on the methodologies used (such as SAFe, Scrum, ...) or techniques.

**Technical constraints**

In larger enterprises, there are often a lot of technical constraints. There is often an overarching architecture committee that sets the standards for technology choices. For example, if you decide to build a single-page application, the overarching architecture committee will set Angular as the SPA framework, so there are expertise synergies between teams.

### Architectural Hypotheses: Create your first high-level architectural hypotheses based on your current knowledge

Congratulations - you've created your architectural playground. 

Now you can create your first architectural hypotheses based on your current team knowledge.

**Be aware**: This is about higher-level architectural assumptions, not micro-decisions like design questions.

Ideally, you can turn your architectural assumptions into draft architecture decision records.

### Challenges and Risks: What are the upcoming challenges and the resulting risks?

Based on the playground you have created, such as business context and scope, quality goals and constraints, you can capture the upcoming challenges and the resulting risks.

It's very important to work this out, evaluate it continuously, and communicate it to the key stakeholders in the system.

This section answers the question of how you evaluate the current situation in relation to the elaborated architectural playground.

## Download

- [PDF](/downloads/architecture-inception-canvas.pdf), e.g. for on-site workshops
- [PNG](/downloads/architecture-inception-canvas.png), as background
- [Template for Miro® boards]()

If you want to create your own version, just clone our [Github repository](https://github.com/arc42/canvas.arc42.org-site).
