---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Unpacking the 2020 Decennial Census"
subtitle: "First Thoughts in Oklahoma"
summary: " "
authors: ["admin"]
tags: [post]
categories: []
date: 2023-05-27T12:00:00-05:00
lastmod: 2023-05-27T12:00:00-05:00
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
This week, the U.S. Census Bureau finally released its [Demographic Profile (DP)](https://www.census.gov/data/tables/2023/dec/2020-census-demographic-profile.html) and [Demographic and Housing Characteristics (DHC)](https://www.census.gov/data/tables/2023/dec/2020-census-dhc.html) data files. By no means is this a comprehensive explanation of the entirety of the 2020 data. Rather, my goal is to provide a few quick reactions, especially with regards to age distribution and housing vacancy in Oklahoma.

## **Age Distribution**

As rural areas are often characterized as places with increasingly aging populations, the first thing I wanted to take a look at was the share of the population aged 65 and over. The map below shows all counties in the United States, with color shading that indicates the percent of county residents that are 65 years old or older.

<iframe title="Share of 2020 Population over Age 65" aria-label="Map" id="datawrapper-chart-6x7cw" src="https://datawrapper.dwcdn.net/6x7cw/1/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="447" data-external="1"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",(function(a){if(void 0!==a.data["datawrapper-height"]){var e=document.querySelectorAll("iframe");for(var t in a.data["datawrapper-height"])for(var r=0;r<e.length;r++)if(e[r].contentWindow===a.source){var i=a.data["datawrapper-height"][t]+"px";e[r].style.height=i}}}))}();
</script>

I'll refrain from making any sweeping conclusions about the US map other than to say that Oklahoma appears to be quite in the middle of the pack. Its oldest counties---McIntosh County with around 27% of its residents over age 65 and Cimmaron/Delaware Counties with around 25% in that age range---are far beneath the oldest counties in the nation (check out the counties in AZ, FL, or the Upper Great Lakes region to see some much higher numbers).

Below is a similar map that only shows Oklahoma's 77 counties, this time color-shaded according to the share of the population in the county under the age of 18. For both maps, users can hover their mouse over a particular county to see 1) the exact percentage of residents aged 65 years or older and 2) whether a selected county belongs to a metropolitan area or is a "rural" (i.e., nonmetropolitan) county.


<iframe title="Share of 2020 Population Under Age 17" aria-label="Map" id="datawrapper-chart-8Akh3" src="https://datawrapper.dwcdn.net/8Akh3/2/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="397" data-external="1"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",(function(a){if(void 0!==a.data["datawrapper-height"]){var e=document.querySelectorAll("iframe");for(var t in a.data["datawrapper-height"])for(var r=0;r<e.length;r++)if(e[r].contentWindow===a.source){var i=a.data["datawrapper-height"][t]+"px";e[r].style.height=i}}}))}();
</script>

The relationship between the two maps shows a significant negative correlation: counties with a higher share of older residents tend not to also have a higher share of younger residents (Kingfisher is a statistical oddity in this regard with 17.4% of the population in *both* counties). Texas County has the highest share of under-18 residents, likely due to recent waves of in-migration. Notably, Texas County has the highest percentage of residents under 18, likely attributed to recent waves of in-migration. Generally, counties with a disproportionately youthful population also tend to have larger families who opt to settle there due to favorable amenities and employment prospects.

## **Vacant Housing Units**

The great thing about the decennial census is that it is based on a true count of all individuals and households living within a given area. Compared to the ACS---which is updated more frequently but is based on sampling, assumptions, and inherent margins of errror---the decennial census is a much better data source when you want to focus on smaller geographies while maintining confdence in data accuracy.[^1]

Moving down from the county to the *census tract* level, here is a map that illustrates residential vacancy in Oklahoma.

<iframe title="Oklahoma Census Tract Vacancy Rate" aria-label="Map" id="datawrapper-chart-T0YTf" src="https://datawrapper.dwcdn.net/T0YTf/1/" scrolling="no" frameborder="0" style="width: 0; min-width: 100% !important; border: none;" height="424" data-external="1"></iframe><script type="text/javascript">!function(){"use strict";window.addEventListener("message",(function(a){if(void 0!==a.data["datawrapper-height"]){var e=document.querySelectorAll("iframe");for(var t in a.data["datawrapper-height"])for(var r=0;r<e.length;r++)if(e[r].contentWindow===a.source){var i=a.data["datawrapper-height"][t]+"px";e[r].style.height=i}}}))}();
</script>

A few patterns emerge. Most obvious is the significantly lower vacancy rates in metropolitan areas (Lawton, OKC/Norman, Tulsa, Ft. Smith suburbs) and micropolitan areas (Ponca City, Stillwater, Durant, Ardmore, McAlester, Miami). This makes logical sense, as the market for housing is almost always "tighter" (more buyers and sellers) in more densely populated areas. Another apparent pattern is the higher levels of vacancy near recreational amenities, including census tracts along Lake Texoma and Eufala Lake. This again makes rational sense, as many housing units near a lake will only be used as vacation properties.



[^1]: Yes, I know the 2020 Census has some [reliability issues](https://www.census.gov/library/fact-sheets/2021/protecting-the-confidentiality-of-the-2020-census-redistricting-data.html), especially at small levels. I hope it is a mistake that is remedied by the time 2030 rolls around.
