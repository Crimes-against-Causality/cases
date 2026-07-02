---
number: 7
slug: face-value
title: "Face Value"
detective: "Nora Nightingale"
author: "Simon Munzert"
difficulty: 3
topics: [Machine learning, Algorithmic fairness, Data provenance]
fallacies: [Sampling bias]
summary: "A dating app sells a premium feature that reads your future wealth off your face. It is 88% accurate—at telling two photo archives apart."
---

# Face Value

## The crime scene

Amora, a Ravenport dating startup, has found its hook. For a monthly fee, its premium tier—**Prospect**—promises to read a person's future from their profile photo. Upload a match's picture and Prospect returns a score: how likely this face belongs to someone "on the way up." Date smarter, the advertising says; find a partner whose best years are ahead of them. Subscriptions have climbed all quarter. On dinner dates across the city, people are quietly checking each other's Prospect scores under the table.

The engine beneath it is, Amora says, simple science—and, the whitepaper insists, carefully validated. The company trained a neural network to tell two kinds of face apart: the faces of the wealthy, and the faces of everyone else. For the wealthy set it drew 5,000 portraits from Aurelian, an invitation-only members' network for Harland's business and social elite—financiers, heirs, the people who appear in the society pages. For the comparison set it took an equal 5,000 passport photographs from the National Identity Register, the ordinary run of citizens—the two classes deliberately balanced, so that no lazy guess toward a bigger group could flatter the result. Accuracy was then measured the textbook way, on held-out faces the model had never seen during training, drawn like the rest from Aurelian and the register. It scored 88%. Amora calls this "the science of prospects" and prints the number on the subscription page.

It might have stayed a minor grievance had the Mayor of Ravenport's son not subscribed, scored poorly, and complained about it over dinner. The Mayor summoned Nora Nightingale to City Hall and slid a document across the desk—Amora's own whitepaper, the technical case for Prospect, the very pages it shows to investors. *Find out whether this thing is real,* he told her.

Nightingale read it once. She did not ask for the code, or the training data, or a live demonstration; the whitepaper was enough. Before she reached the last page she set it down. "Case closed," she said. "It doesn't work. And they've proved it themselves." Two pages of the company's own evidence had told her that Prospect was worthless. What had she seen?

## Exhibit 1: A sample from the training set

*Six of the 10,000 training images, reproduced in Amora's whitepaper—three from each class. (The photographs themselves carry no labels; only the folder they came in does.)*

| Class label | The photograph |
|-------------|----------------|
| High future wealth | A man in his thirties, softly lit against a blurred office window, mid-smile, open collar. |
| High future wealth | A woman laughing at a gala, a champagne flute just in frame, the shot professionally retouched. |
| High future wealth | A polished corporate headshot: warm tones, teeth showing, tailored blazer, shallow focus. |
| Average | A woman square-on to the camera, neutral expression, plain grey background, flat even lighting. |
| Average | A man, unsmiling, both ears visible, uniform frontal light, off-white backdrop. |
| Average | A frontal portrait, no smile, plain wall behind, the unmistakable flatness of an official document photo. |

## Exhibit 2: How well Prospect performs

*Amora's evaluation of Prospect, from the same whitepaper.*

| | |
|---|---|
| Training images | 5,000 "high future wealth" (Aurelian) + 5,000 "average" (National Identity Register) — classes balanced |
| Evaluation | 20% held out from the same two sources, unseen during training (out-of-sample) |
| Overall accuracy | 88% |

> **Amora's claim:** *"Prospect identifies high-earning-potential faces with 88% accuracy. The camera doesn't lie."*

## The interrogation

1. **Multiple choice.** Prospect's 88% accuracy was measured on: (a) everyday photos uploaded by real users; (b) new images held out from the same two archives used in training; (c) an independent sample checked against people's actual wealth.

2. **True or false?** That 88% could have been reached by a model that simply always guesses the larger class.

3. **True or false?** The wealthy faces and the ordinary faces were photographed in the same way.

4. **Yes or no?** From Exhibit 1 alone, could you sort the two piles using only photographic cues—expression, lighting, background—knowing nothing about anyone's finances?

5. **True or false?** In the training data, a face's label ("high future wealth" versus "average") can be predicted perfectly just from which archive the photo came from.

6. **True or false?** Because the test faces were held out and never seen during training, the 88% shows Prospect will work on the photos real users upload.

7. **Yes or no?** Did Amora ever test the thing it is actually selling—that a face predicts future wealth?

8. What is the fundamental flaw in the claim that Prospect predicts future wealth from a face?

## Answers

1. **(b).** The evaluation set is a held-out slice of the same Aurelian-and-passport pool—unseen in training, but drawn from exactly the two sources the model was built on.

2. **False.** The classes were deliberately balanced, so a model that always guessed one class would score only 50%. The 88% is a genuine signal—the question is a signal of *what*.

3. **False.** The "wealthy" faces are curated Aurelian material—smiling headshots and gala shots; the "average" faces are passport photos taken under neutral-expression rules. Two sources, two sets of conventions.

4. **Yes.** One pile is warm, smiling studio work; the other, flat, unsmiling document photos. The style alone separates them, with nothing about anyone's finances required.

5. **True.** Every wealthy example is an Aurelian photo and every average example a passport photo, so source and label are one and the same fact.

6. **False.** "Held out" only means unseen—and those unseen faces are still Aurelian portraits and passport photos. Everyday snapshots resemble neither, so the test speaks to them not at all.

7. **No.** Every figure in the whitepaper concerns telling the two photo archives apart. The claim it is sold on—that a face foretells a fortune—was never put to a test.

8. The model learned only to tell the two photo sources apart, and was only ever tested on those same sources—never on the task it is sold for.

## What went wrong

The rogue is **sampling bias**—a flaw sealed in before a single face was analysed, at the moment the training data were gathered. To teach Prospect what wealth "looks like," Amora needed examples of wealthy faces and ordinary faces, and it drew them from two different places: an elite members' network for the first, the passport register for the second. That one decision doomed everything downstream. The two archives differ in several incidental ways—expression, lighting, styling, image quality. Asked to separate "wealthy" from "average," the model was handed a dataset in which the easiest way to do exactly that was to separate *Aurelian* from *the passport office*. So that is what it learned.

In the language of the rest of this book, the label ended up *confounded* with the photograph's provenance—but here the confound is the symptom, not the disease. Nothing was wrong with the neural network, and no cleverness in the analysis could have rescued it. The bias entered with the sampling, and once there it cannot be removed: a model can only ever learn to tell apart what its training data actually differ on. 

What makes this potentially hard to spot is that Amora did everything a careful analyst is told to do. It balanced the two classes, so the 88% is no artefact of lopsided data. It held the test faces out of training, so the model is not merely memorising images it has already seen. These are common safeguards. But every one of those held-out faces is still an Aurelian portrait or a passport photo. So the score shows only that the model keeps telling the two sources apart on fresh examples of the same two sources. The test that would bear on Amora's claim—can a face predict a fortune?—needs both groups gathered the same way, or better still the ordinary photos real users upload. That test is nowhere in the whitepaper, and its absence is what Nightingale saw.

The moment Prospect meets the world, users upload snapshots that look like neither a society headshot nor an official portrait, and the cue the model leans on—the look of the source—is gone. The 88% does not travel; on real photographs it should sag toward a coin toss, save for the user who happens to own a polished, Aurelian-style headshot and is scored "wealthy" for the lighting and the grooming alone. The crime against causality is to take an artifact of how the data were *collected*—and a validation that never once stepped outside that collection—and sell it as a discovery about who people *are*, and who they will become.

## Background

The direct ancestor of this case is Wu and Zhang's 2016 preprint *Automated Inference on Criminality using Face Images*, which claimed a neural network could distinguish criminals from non-criminals by facial features alone. In a widely read rebuttal, *Physiognomy's New Clothes*, Blaise Agüera y Arcas, Margaret Mitchell, and Alexander Todorov showed that the two image sets had been gathered under different conditions—the non-criminal photographs came from sources where people were more often smiling and differently dressed—so that the classifier was in large part detecting expression and image provenance, not character. 

The general principle is one every practitioner learns and many still trip over: a model is only as trustworthy as the question its data actually pose. If the classes differ in *how they were captured*, the model can achieve dazzling accuracy while learning nothing about the trait it was supposed to measure. The pattern recurs across machine learning—pneumonia models that keyed on which hospital's scanner took the X-ray, dermatology models that learned to spot the ruler photographed beside malignant moles—and it revives a much older and thoroughly discredited tradition, from physiognomy to Lombroso, of reading destiny off a face. Dressed in a neural network, the same error looks like science.

## Sources

- Wu, X., & Zhang, X. (2016). *Automated Inference on Criminality using Face Images.* arXiv:1611.04135. https://arxiv.org/abs/1611.04135
- Agüera y Arcas, B., Mitchell, M., & Todorov, A. (2017, May 6). *Physiognomy's New Clothes.* Medium. https://medium.com/@blaisea/physiognomys-new-clothes-f2d4b59fdd6a
- Bergstrom, C. T., & West, J. D. Criminal machine learning. *Calling Bullshit: Case Studies.* https://callingbullshit.org/case_studies/case_study_criminal_machine_learning.html
- Narayanan, A., & Kapoor, S. (2024). *AI Snake Oil: What Artificial Intelligence Can Do, What It Can't, and How to Tell the Difference.* Princeton University Press.
