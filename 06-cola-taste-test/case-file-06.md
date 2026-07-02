---
number: 6
slug: cola-taste-test
title: "The Marked Glass"
detective: "Wilbert Wright"
author: "Simon Munzert"
difficulty: 2
topics: [Advertising, Experimental design, Measurement]
fallacies: [Confounding]
summary: "A blind taste test proves even loyalists prefer the challenger cola. But the two glasses differed in more than their contents."
---

# The Marked Glass

## The crime scene

For a generation, Crown Cola has owned Ravenport. It outsells its nearest rival, Fizz, by roughly three to one; its logo hangs over the ballpark, and its jingle is the sort of thing Ravenporters hum without meaning to. Fizz's marketing department had grown tired of second place.

So Fizz commissioned a study. The premise was simple and, on its face, admirably fair: take committed *Crown* drinkers—people with every reason to prefer Crown—and let them taste both colas without knowing which was which. If even Crown's own loyalists preferred Fizz in a blind test, surely the market had simply been getting it wrong.

To keep the test blind, the researchers refused to label the glasses "Crown" and "Fizz"—the brand names alone, they reasoned, might sway a thirsty patriot. Instead, each participant was handed two unmarked glasses distinguished only by a letter. The Crown glass was marked **Q**. The Fizz glass was marked **M**. Participants sipped, considered, and pointed to the glass they preferred.

The result made the papers. More than half of the Crown loyalists chose glass M—Fizz. Within a week the finding was a full-page advertisement: *"Even Crown drinkers prefer Fizz."* Fizz's share price ticked upward. Crown's Ravenport office declined to comment.

Wilbert Wright, who would never prefer a glass of either Crown or Fizz over his own filter coffee, was not convinced by the result. Besides a possible difference in taste, can you think of other possible explanations for the observed preference of Fizz over Crown?


## Exhibit 1: The study, on one page

*The recruitment, protocol, and results summary that Fizz released alongside the advertisement.*

**Commissioned by** the Fizz Cola Company; **conducted by** an outside marketing consultancy over a single afternoon in central Ravenport.

**Recruitment.** Interviewers approached passers-by on the pavement outside the Haldane Arcade, a busy downtown shopping street, on a Saturday in July. Anyone who stopped and described themselves as a "regular Crown drinker" was enrolled, up to a target of 200. People who declined the approach, or who drank neither brand, were not recorded.

**Protocol.** Each participant received two chilled, brand-unlabelled glasses. Crown was always poured into the glass marked **Q**; Fizz was always poured into the glass marked **M**. Every participant tasted **glass Q first, then glass M**, took a single sip of each, then some water in between to neutralize the taste, and finally named the one they preferred.

**Results.** 124 of the 200 tasters (62%) chose glass M (Fizz); 76 (38%) chose glass Q (Crown). A statistical test confirms the gap is very unlikely to be down to chance.

## The interrogation

1. How were the tasters recruited, and how could that have affected the result?

2. Do you think the sample size is in principle sufficient to settle the question? 

3. What—besides the cola—was true of the M glass but not the Q glass?

4. How would you have adapted the protocol to rule out rival explanations (next to taste) that could explain the preference gap?

5. The advertisement claims people prefer the *taste* of Fizz. What can this study honestly support—and what can it not?

## Answers

1. They were a *convenience sample*: whoever happened to pass that one arcade on that one Saturday and was willing to stop for a free taste, each vouching for their own Crown loyalty. Two things follow. First, the group stands for no clear population—not Crown drinkers across Ravenport, still less cola drinkers in general—so whatever they preferred need not hold for anyone else. Second, people who stop for a sidewalk taste test may differ systematically from those who walk on (more curious, more suggestible, more time on their hands), and we have only their word that they favour Crown. At best the result speaks for "people like these, here, that day"—not the market the advertisement invokes.

2. "Enough" has no answer on its own—it depends on how large a difference you are trying to detect. Statisticians call a test's ability to detect a real difference its **power**, and power grows both with the sample size and with the size of the true effect: a razor-thin preference could stay hidden even among thousands of tasters, while a lopsided one reveals itself in a few hundred. If we assume for a moment that the detected difference in preferences in this case is the same in the population of interest, 200 tasters is comfortably powered. That is what the significance test behind the factsheet's claim actually computes. It asks a single "what if": *were the two glasses in truth equally preferred, how often would chance alone produce a split at least as lopsided as 124 to 76?* That probability—the *p-value*—comes out here at under one in a thousand, so a mere fluke of who happened to show up can be ruled out, and the preference is real. Yet power and significance speak only to whether an effect *exists*, never to what *caused* it.

3. Three things were true of the M glass, not one. It held Fizz—but it was also the glass marked "M," and the glass every taster drank *second*. A liking for the letter, or for whatever was sipped last, would produce a preference for the M glass just as surely as a liking for the cola would. Nothing in the study tells these explanations apart.

4. Break apart the things that travelled together. Assign the letters at random—so Fizz is the "Q" glass for half the tasters and "M" for the rest—and likewise vary which glass is tasted first; then only the cola still lines up with the brand, and a preference gap could finally be read as a taste gap. Simpler still is a control condition: pour the *same* cola into both glasses. If people still crowd toward "M" (or toward the second glass), the pull was never the drink. That is precisely the test Crown ran in reply—and "M" won again.

5. Honestly, very little that is of interest. The study can fairly say that this particular group, on that afternoon, chose the M glass more often than the Q glass. It cannot say *why*—because the cola was inseparable from the letter on its glass and its place in the tasting order. The one claim the design cannot support is the very one in the headline: that people prefer how Fizz *tastes*.

## What went wrong

The core flaw is **confounding**. A clean experiment changes one thing at a time, so that any difference in the outcome can be pinned on that one thing. This study changed *three* things together: the cola, the letter on its glass, and its place in the tasting order. Fizz was always the "M" glass, and always the second sip. When several things move in perfect step, no result can separate them—so a preference that really belonged to the letter, or to whatever was tasted last, is credited in full to Fizz's flavour.

That this is not hair-splitting became clear when Crown ran the study back. Using the identical setup, its researchers poured *Crown into both glasses*—the "Q" glass and the "M" glass alike. Tasters still preferred M. With the contents now identical, the only things left to prefer were the label and the order—so a real share of Fizz's "taste victory" was nothing of the kind.

It is tempting to think the size of the margin—124 to 76—settles the question. It does not. A large, reliable majority shows only that the preference for the M glass is real; it says nothing about *what* people were responding to. Measuring a confounded comparison more precisely does not make it less confounded—it merely lends false authority to the wrong conclusion. And because the tasters were a convenience sample gathered on one pavement on one afternoon, even a genuine taste effect would tell us little about drinkers anywhere else.

None of this requires anyone to have lied. The crime is against *causality*: a study built so that the effect it claims to measure can never be separated from incidental features of how the treatment was served.

## Background

This case is adapted from a real and much-taught episode. In a Dallas taste-preference study, Pepsi presented committed Coke drinkers with two blind glasses—Coke in a glass marked **Q**, Pepsi in a glass marked **M**—and reported that a majority preferred the Pepsi glass. When Coca-Cola replicated the study with Coke in *both* glasses, participants still preferred the one marked M, exposing letter preference as a plausible rival explanation. Pepsi later repeated the experiment using an **L** for Pepsi and an **S** for Coke—reproducing the very same design error.

The episode is also featured as an example in Huck and Sandler's *Rival Hypotheses*, whose central discipline is to ask, of any data-based conclusion, "what *else* could explain this?" It also sits inside the broader "Pepsi Challenge" marketing campaigns of the era. The lesson generalizes beyond soft drinks: whenever a treatment is delivered in a way that is perfectly bundled with some incidental feature—a label, a room, an interviewer, an order of presentation—the effect you measure could belong to either.

## Sources

- Huck, S. W., & Sandler, H. M. (1979). *Rival Hypotheses: Alternative Interpretations of Data Based Conclusions.* Harper & Row.
- Woolfolk, M. E., Castellan, W., & Brooks, C. I. (1983). Pepsi versus Coke: Labels, not tastes, prevail. *Psychological Reports*, 52(1), 185–186. https://doi.org/10.2466/pr0.1983.52.1.185
