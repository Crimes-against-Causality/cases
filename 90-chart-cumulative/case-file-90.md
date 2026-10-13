---
number: 90
slug: chart-cumulative
title: "Ever Upward"
format: chart
detective: "Nora Nightingale"
author: "Simon Munzert"
difficulty: 2
topics: [Data visualization, Transport, Economics]
fallacies: [Cumulative creep]
summary: "A rising curve of electric vehicles 'keeps accelerating' in the Ledger's chart of the week. Quarterly sales peaked three years ago and have fallen by a third since."
---

# Ever Upward

## Chart of the week

The Harland Vehicle Licensing Agency marks each milestone in electric-vehicle registrations with a press release, and the quarter-millionth vehicle came with a chart. The *Ledger* ran it as its "Chart of the Week" under the Agency's headline. The Progress Alliance's transport minister quoted it in the Assembly the following day: *"The curve speaks for itself. Harland's switch to electric is accelerating."* Nora Nightingale is not so sure about the conclusion. Why?

![Chart of the week: Electric vehicles keep accelerating in Harland](chart-of-the-week.png)

## The interrogation

1. What do each of the plot's axes report?

2. According to the chart, which quarter saw the highest overall number of electric vehicles ever registered, and which quarter saw the highest number of new registrations of electric vehicles? 

3. The headline says electric vehicles are "accelerating." What quantity would have to be rising for that to be true, and what chart would show it?

## Answers

1. The y axis counts every electric vehicle registered since the start of 2019, added up. The x axis provides the time dimension, with quarterly granularity.

2. The chart provides cumulative data. That means that the latest quarter is also the quarter with the highest number of electric vehicles ever registered. That is different from the quarter with the highest number of new registrations. In order to identify that one, one would have to look for the point in time where the curve is steepest - which is in 2023, around the second quarter, when about 14,600 vehicles were registered in a quarter. Since then it has been bending over: by mid-2026, quarterly registrations are about 9,400, a fall of more than a third from the peak.

3. "Accelerating" means that the *number of new registrations per quarter* is rising. It is not; it peaked three years ago. A simple bar chart of registrations by quarter (or a line chart reporting monthly registrations, not cumulative figures) would show the rise to 2023 and the decline since in a single glance—and would not have supported the headline.

## What went wrong

Cumulative charts are the natural habitat of good news. They rise by construction but put what is commonly of interest—whether the thing being counted is speeding up or slowing down—into the curvature of a line, which the eye reads poorly. This chart turned a market that has been shrinking for three years into a story of acceleration without misstating a single number.

## Background

In September 2013 Apple's chief executive Tim Cook opened a product launch with a chart of *cumulative* iPhone sales since 2007, a smooth and steeply rising curve, at a time when the company's quarterly iPhone sales growth had slowed markedly and unit sales had fallen in the most recent quarter. The journalist Kevin Quealy of *The New York Times*, among others, pointed out that a cumulative chart cannot show a slowdown, and Quartz published the same data as quarterly sales, with a very different shape. The cumulative chart became a widely used example of how a running total can hide a decline.

## Sources

- Quartz. (2013, September 10). The chart Apple didn't show you: quarterly iPhone sales. https://qz.com/122921/the-chart-tim-cook-doesnt-want-you-to-see
- Wilke, C. O. (2019). *Fundamentals of Data Visualization.* O'Reilly. Chapter 13, "Visualizing time series and other functions of an independent variable."
