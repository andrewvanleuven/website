---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Distressed Communities in Oklahoma"
subtitle: "Exploring the Upjohn Institute's New Data"
summary: " "
authors: ["admin"]
tags: [post]
categories: []
date: 2023-06-02T12:00:00-05:00
lastmod: 2023-06-02T12:00:00-05:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: true

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: [datasci]
---

The W.E. Upjohn Institute for Employment Research---a private, not-for-profit, nonpartisan, independent research organization---recently released a new [index of economic distress](https://www.upjohn.org/major-initiatives/promise-investing-community/data-and-resources/economic-distress) across the United States. The index is focused on distressed communities because "there are huge differences in the availability of good jobs from place to place, and those differences lead to vastly different types of economic opportunities for residents." Below is a map of Oklahoma that shows the distress index value for each county.

<iframe title="Economic Distress Rating by County" aria-label="Map" id="datawrapper-chart-WLtyk" src="https://datawrapper.dwcdn.net/WLtyk/1/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="424" data-external="1"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",(function(a){if(void 0!==a.data["datawrapper-height"]){var e=document.querySelectorAll("iframe");for(var t in a.data["datawrapper-height"])for(var r=0;r<e.length;r++)if(e[r].contentWindow===a.source){var i=a.data["datawrapper-height"][t]+"px";e[r].style.height=i}}}))}();
</script>

According to Upjohn economist Tim Bartik, the distress classifications are "inherently arbitrary, in that they are based on particular levels of the prime-age employment rate." The cutoffs used are:

* *Fully employed* is a prime age employment rate greater than or equal to 82.8%.
* *Close to fully employed* is greater than or equal to 80%, less than 82.8%
* *Marginally distressed* is greater than or equal to 76.5%, less than 80%.
* *Distressed* is greater than or equal to 72.3%, less than 76.5%.
* *Severely distressed* is less than 72.3%.

So this index essentially focuses on how many prime-age (ages 25-54) residents are employed within a given place, which Upjohn's economists describe as a "key driver of economic and social well-being for a particular place." There were a lot more "Distressed" and "Severely Distressed" counties than I was expecting to see in Oklahoma. Also, the spatial distribution of distressed counties was pretty even, scattered between east, west, north, and south.

I need some more time to think about this measure as an indicator of economic distress. The full dataset (available [here](https://www.upjohn.org/major-initiatives/promise-investing-community/data-and-resources/economic-distress/distressed-communities-file-download)) has data for all U.S. states, and the index is calculated at multiple geographic levels, including tract, commuting zone, and state.
