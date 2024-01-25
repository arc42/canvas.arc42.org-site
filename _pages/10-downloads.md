---
title: Download Canvasses
layout: splash
permalink: /downloads
header:
  overlay_image: /images/splash/home-splash.webp
  caption: "Background photo credit: [**Samantha Gades**](https://unsplash.com/de/@srosinger3997)"
  overlay_filter: rgba(0, 0, 0, 0.6)
excerpt: "**Download the AIC and ACC**"
---


<h2 id="architecture-communication-canvas-acc"><a class="black-link" href="/architecture-communication-canvas">Architecture Communication Canvas (ACC)</a></h2>

<ul>
  <li><a href="/downloads/architecture-communication-canvas.pdf">PDF</a>, e.g. for on-site workshops</li>
  <li><a href="/downloads/architecture-communication-canvas.png" onclick="downloadFile()">Download PNG</a>, as background for drawing tools</li>
  <li><a href="/downloads/ArchitectureCommunicationCanvas-empty.drawio">draw.io Template</a></li>
  <li><a href="https://miro.com/miroverse/architecture-communication-canvas/">Miro® template on Miroverse</a> (<a href="/downloads/Architecture Communication Canvas.rtb">Direct download *.rtb</a>)</li>
  <li><a href="https://app.mural.co/template/5a5692e4-35e0-4a8e-8f1a-52601d2606cd/07a79dde-bfca-4ffc-b6cf-3ecb5315774b">Mural® Template</a></li>
  <li><a href="/downloads/ArchitectureCommunicationCanvas-v2.pptx">PowerPoint®</a></li>
</ul>

<h2 id="architecture-inception-canvas-aic"><a class="black-link" href="/architecture-inception-canvas">Architecture Inception Canvas (AIC)</a></h2>

<ul>
  <li><a href="https://miro.com/miroverse/architecture-inception-canvas/">Miro® template on Miroverse</a></li>
  <li><a href="https://app.mural.co/template/6957648a-5fd4-41a7-9b25-c47a3393793a/0bd7c7f5-e587-4a13-a00b-66bb47e04304">Mural® template</a></li>
  <li><a href="/downloads/architecture-inception-canvas.pdf">PDF</a></li>
  <li><a href="/downloads/architecture-inception-canvas.png" onclick="downloadFile()">PNG</a></li>
  <li><a href="/downloads/architecture-inception-canvas.pptx">PowerPoint®</a></li>
  <li><a href="/downloads/architecture-inception-canvas.rtb">File template for Miro®</a></li>
  <li><a href="/downloads/architecture-inception-canvas.drawio">Template for Draw.io</a></li>
</ul>

#### arc42 compatibility

If you're working with the [arc42 template](https://arc42.org/overview), you can easily switch from the Architecture Inception Canvas to your arc42 template. Take a look at the additional arc42 documentation hints in the downloads below:

<ul>
  <li><a href="/downloads/architecture-inception-canvas-hints.pdf">PDF with arc42 documentation hints</a></li>
  <li><a href="/downloads/architecture-inception-canvas-hints.png" onclick="downloadFile()">PNG with arc42 documentation hints</a></li>
</ul>



## Create your own version

If you want to create your own version, just clone our [Github repository](https://github.com/arc42/canvas.arc42.org-site).










<!-- Needed because Minimal Mistakes does not make downloading PNGs possible -->

<script>
function downloadFile() {
  var link = document.createElement('a');
  link.href = "/downloads/architecture-communication-canvas.png";
  link.download = "architecture-communication-canvas.png";
  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);
}
</script>  
