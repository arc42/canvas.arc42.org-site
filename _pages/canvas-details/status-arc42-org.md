---
title: ACC for status.arc42.org
layout: splash
permalink: /canvas-details/acc-status-arc42-org
header:
    overlay_image: /examples/acc-status-arc42-org.webp
---

![architecture communication canvas for RecipeRecommender](/examples/acc-status-arc42-org.webp)

**status.arc42.org is the subdomain that displays detailed usage analytics and status information. Recently we added a table summarizing visitor and pageview statistics.**

## Value Proposition
Show detailed aggregate statistics of visitors and pageviews of all arc42 websites.

This information helps the arc42 contributors to understand user needs and interests.


## Key Stakeholders
* arc42 comitters
* users of arc42 website(s)
* web developers


## Core functions

## Quality Requirements

## Business context

## Core Decisions
<div markdown="1" class="decision-box good-decisions">
* static site generation based upon Jekyll
* use Golang to implement statistics service, deployed on fly.io
</div>

<div markdown="1" class="decision-box bad-decisions">
* Just a single (slow) API call to the site-statistics service, which collects all required data from the external APIs and renders the required HTML table. Usually requires longer than 1200msec to complete. 
* All these API calls (e.g. to plausible.io, github.com and others) could be parallelized to improve overall performance.
</div>

## Components / Modules

|

## Technologies

