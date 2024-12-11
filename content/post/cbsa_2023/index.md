---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Recent Changes to U.S. Metropolitan and Micropolitan Areas"
subtitle: "Unpacking the 2023 CBSA Delineation Files"
summary: " "
authors: []
tags: [post]
categories: []
date: 2023-08-04T12:00:00-05:00
lastmod: 2023-08-04T12:00:00-05:00
featured: true
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

As the 2020 Decennial Census is now a few years old, the Office of Management and Budget (OMB) finally [released](https://www.whitehouse.gov/wp-content/uploads/2023/07/OMB-Bulletin-23-01.pdf) its "revised delineations for the Nation’s Metropolitan Statistical Areas, Micropolitan Statistical Areas, Combined Statistical Areas, and Metropolitan Divisions," otherwise referred to as Core Based Statistical Areas (CBSAs). This short post uses these new delineations to illustrate how the overall CBSA landscape has changed since 2013 (when the previous decade's delineations were released).[^1]

There are four main categories of CBSAs to highlight:

1) **CBSAs that were demoted** either from metropolitan statistical area (MSA) to micropolitan statistical area (μSA) or that altogether lost their status as a CBSA
2) **CBSAs that were promoted** either from μSA to MSA or from a non-CBSA to a CBSA
3) **CBSAs that grew or shrank** either gaining or losing constituent counties
4) **CBSAs that did not experience any changes** in their delineations between 2013 and 2023 (a variant in this category includes CBSAs with the same delineation but a different principal city).

And now, some maps:
</br>

<iframe title="CBSA Delineation Changes" aria-label="Map" id="datawrapper-chart-ClO9H" src="https://datawrapper.dwcdn.net/ClO9H/3/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="724" data-external="1"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",(function(a){if(void 0!==a.data["datawrapper-height"]){var e=document.querySelectorAll("iframe");for(var t in a.data["datawrapper-height"])for(var r=0;r<e.length;r++)if(e[r].contentWindow===a.source){var i=a.data["datawrapper-height"][t]+"px";e[r].style.height=i}}}))}();
</script>

This map shows every CBSA from either the 2013 or 2023 delineation scheme. While the majority of statistical areas did not change over the last decade, a nontrivial number of CBSAs changed in some way during that time. Since this first map is quite busy (my apologies to those viewing on a mobile device), I included a few additional maps to tell a cleaner story. Each of the maps below focuses on a different category of change.

</br>


<iframe title="Promoted Statistical Areas" aria-label="Map" id="datawrapper-chart-Y3DTI" src="https://datawrapper.dwcdn.net/Y3DTI/2/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="724" data-external="1"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",(function(a){if(void 0!==a.data["datawrapper-height"]){var e=document.querySelectorAll("iframe");for(var t in a.data["datawrapper-height"])for(var r=0;r<e.length;r++)if(e[r].contentWindow===a.source){var i=a.data["datawrapper-height"][t]+"px";e[r].style.height=i}}}))}();
</script>

<sub>Hover over each CBSA to see whether the promotion was a bump up from μSA to MSA or a classification as a new CBSA.</sub>

</br>


<iframe title="Demoted Statistical Areas" aria-label="Map" id="datawrapper-chart-704AM" src="https://datawrapper.dwcdn.net/704AM/2/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="724" data-external="1"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",(function(a){if(void 0!==a.data["datawrapper-height"]){var e=document.querySelectorAll("iframe");for(var t in a.data["datawrapper-height"])for(var r=0;r<e.length;r++)if(e[r].contentWindow===a.source){var i=a.data["datawrapper-height"][t]+"px";e[r].style.height=i}}}))}();
</script>

<sub>Hover over each CBSA to see whether the demotion was a bump from MSA to μSA or a declassification as no longer a CBSA.</sub>

</br>


<iframe title="CBSAs that Gained or Lost Counties " aria-label="Map" id="datawrapper-chart-ApH0O" src="https://datawrapper.dwcdn.net/ApH0O/1/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="724" data-external="1"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",(function(a){if(void 0!==a.data["datawrapper-height"]){var e=document.querySelectorAll("iframe");for(var t in a.data["datawrapper-height"])for(var r=0;r<e.length;r++)if(e[r].contentWindow===a.source){var i=a.data["datawrapper-height"][t]+"px";e[r].style.height=i}}}))}();
</script>

<sub>Hover over each CBSA to see the net number of constituent counties gained or lost between 2013 and 2023.</sub>

</br>


<iframe title="Renamed Statistical Areas" aria-label="Map" id="datawrapper-chart-p2tvJ" src="https://datawrapper.dwcdn.net/p2tvJ/3/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="707" data-external="1"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",(function(a){if(void 0!==a.data["datawrapper-height"]){var e=document.querySelectorAll("iframe");for(var t in a.data["datawrapper-height"])for(var r=0;r<e.length;r++)if(e[r].contentWindow===a.source){var i=a.data["datawrapper-height"][t]+"px";e[r].style.height=i}}}))}();
</script>

<sub>There were only 12 CBSAs whose name changed during the previous decade. Some of these changes were due to a different city rising to the level of "principal city" (e.g., the Glenwood Springs, CO μSA being renamed to Rifle, CO μSA). Others (such as the 2013 Cleveland-Elyria, OH MSA) simply dropped one or more of their supporting principal cities (in this case, Elyria).</sub>

</br>

My whole goal in writing this post was to visualize the resulting changes of OMB's revised metropolitan and micropolitan statistical area delineations. This was a fun exercise in mapping and data wrangling, and I hope it can serve as a useful reference point for those curious about the evolution of our statistical regions after a decade of growth and decline. Anyone who'd like a copy of my data, I've [uploaded it to the Harvard Dataverse](https://doi.org/10.7910/DVN/CED24H). Please use the following citation:

Van Leuven, Andrew J., 2024, "Changes to U.S. Metropolitan and Micropolitan Areas, 2013-2023", [https://doi.org/10.7910/DVN/CED24H](https://doi.org/10.7910/DVN/CED24H), Harvard Dataverse, V1.

</br>

[^1]: I used the Census Bureau's delineation files for 2023 [here](https://www.census.gov/geographies/reference-files/time-series/demo/metro-micro/delineation-files.html) and for 2013 [here](https://www.census.gov/geographies/reference-files/time-series/demo/metro-micro/historical-delineation-files.html). There is a fantastic breakdown of ["Metro Area History from 1950 to 2020"](https://www2.census.gov/programs-surveys/metro-micro/geographies/reference-files/2020/historical-delineation-files/metro_area_history_1950_2020.xls) on the Census Bureau site, but alas, it does not include any of the 2023 changes.

