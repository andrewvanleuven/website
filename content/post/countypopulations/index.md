---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Historical U.S. County Population Data: 1900 to 2010"
subtitle: ""
summary: " "
authors: []
tags: []
categories: []
date: 2020-07-11T16:38:54-05:00
lastmod: 2020-07-11T16:38:54-05:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: [datasci]
---
These data---1900 to 1990 county populations---come from the U.S. Census ([link](https://www.census.gov/population/www/censusdata/cencounts/index.html)) but have not historically been available in tabular form. I wrote a custom R script[^1] which converted the individual state-level .txt files from this Census webpage into usable .csv files. The county population data for 2000 and 2010 were collected using Kyle Walker's excellent [`tidycensus`](https://github.com/walkerke/tidycensus) package.

I hope this project is a helpful time-saver for anyone in the future who needs this dataset.

### Data

* Here is a [direct download](https://andrewvanleuven.com/files/data/historical_county_populations.csv) of the data.

* Here is a [link](https://github.com/andrewvanleuven/vanleuven_academic/blob/master/static/files/data/historical_county_populations.csv) to the data in GitHub (as a searchable online table).

[^1]: Here is my [R code](https://github.com/andrewvanleuven/vanleuven_academic/blob/master/static/files/code/hist_city_pops.R) which I wrote for this project. The custom function I created did not work for four states (AK, CO, FL, and SD) so I processed those .txt files by hand, using Excel. Still, 47 out of 51 isn't bad! If anyone has an idea why my script couldn't handle those states, please [reach out](mailto:vanleuven.3@osu.edu) to me.