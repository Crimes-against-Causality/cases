# The Rogues' Gallery

Brief, plain-language explanations of the recurring "suspects" — the reasoning
errors behind the cases. Each `##` heading below is one fallacy; the name must
match the `fallacies:` tags used in the case files, so that the book can link
each suspect to the cases where it struck. Keep the explanations short, vivid,
and free of jargon.

## Right censoring

**The con:** Judging how long things last by looking only at the ones that have already ended.

Imagine measuring how long people live by looking only at those who have *already
died*. Everyone still alive—including everyone who will go on to a ripe old
age—is left out, so the "average age at death" you compute is dragged downward:
the long-lived simply haven't finished living yet. Right censoring is exactly
this—the data are cut off before the full story has played out, so anything that
takes a long time to happen is systematically missing. It bites hardest when you
compare groups of different ages: a newer group (a young music genre, a recent
product, a fresh batch of patients) hasn't had time to accumulate its late
outcomes, so it can look far worse—or better—than it really is.

**How to catch it:** Ask whether everyone in the data has had *enough time* for
the outcome to occur. If the clock is still running for many of them, any
"average time to X" is premature.

## Survivorship bias

**The con:** Studying the winners and forgetting the ones who didn't make it.

In World War II, analysts examined returning bombers to decide where to add
armor, and were tempted to reinforce the spots most riddled with bullet
holes—until someone pointed out that planes hit in *those* spots were the ones
that made it home. The damage that mattered was on the planes that never
returned, which nobody could examine. Survivorship bias is drawing a conclusion
from the survivors of some process while the failures—the dropouts, the
bankruptcies, the quitters, the planes that crashed—quietly vanish from view.
Because survivors are visible and casualties are not, a pattern that is really
about *who survived* gets mistaken for a pattern about *what causes success*.

**How to catch it:** Ask who or what is missing from the sample because it didn't
make it this far—and whether the conclusion would survive if they were put back
in.

## Simpson's paradox

**The con:** A pattern that holds inside every group reverses when you lump the groups together.

A hospital can have a lower survival rate than its rival *overall*, yet a higher
survival rate for *every single condition* it treats. How? If it takes on far
more of the hardest cases, its combined numbers are weighed down even though it
does better patient-for-patient. The reversal appears whenever a lurking third
variable—here, the mix of easy and hard cases—is spread unevenly across the
groups. Aggregated and broken-out data can literally point in opposite
directions, and the trustworthy answer is the one whose comparison actually
matches the question you care about.

**How to catch it:** When a single headline number compares two groups, ask what
happens when you break it down. If the breakdown disagrees with the total, a
hidden variable is steering the aggregate.

## Confounding

**The con:** A third factor secretly drives both the supposed cause and the effect, faking a link between them.

Ice-cream sales and drowning deaths rise together—not because cones are
dangerous, but because hot weather drives both. A confounder is a lurking common
cause that makes two things move together even when neither causes the other (or
that makes a real effect look bigger or smaller than it is). It is the single
most common reason a correlation gets mistaken for causation, and because the
confounder often goes unmeasured and unmentioned, the spurious link can look
entirely convincing.

**How to catch it:** For any "X causes Y" claim from observational data, ask
whether something else could cause *both* X and Y. If the groups being compared
differ in ways other than X, the difference in Y may have nothing to do with X.

## Sampling bias

**The con:** Gathering your data in a way that quietly settles the answer before any analysis begins.

A finding is only ever as trustworthy as the data beneath it, and data never simply appears—someone decides what to collect, from where, and how. When that decision leaves the sample unrepresentative of the thing you actually care about, the bias is sealed in at the source, and no amount of clever analysis downstream will lift it back out. The trap is most seductive when two groups are gathered from two different places: any difference between the places—who was photographed, when, under what rules—now travels in perfect lockstep with the group label and masquerades as a difference between the groups themselves. A study, or a machine-learning model, then "discovers" a pattern that lives entirely in the collecting, not in the world.

**How to catch it:** Ask where each number actually came from, and whether the things being compared were gathered the same way. If two groups were drawn from different sources, assume those sources differ in ways that have nothing to do with your question—until someone proves otherwise.

## Base rate neglect

**The con:** Fixating on a test's accuracy while ignoring how rare the thing it detects actually is.

Suppose a disease affects 1 in 1,000 people and a test is 99% accurate. You test
positive. Your chance of actually being ill is not 99%—it's closer to 9%, because
for every true case the test catches, it also flags a scattering of healthy
people, and there are vastly more healthy people to begin with. The "base
rate"—how common the condition is—is decisive, yet intuition fixates on the
test's accuracy and forgets it. When the target is rare, even an excellent test
produces mostly false alarms.

**How to catch it:** Before trusting a positive result, ask how common the
condition is in the first place. Turn percentages into head-counts: out of 1,000,
how many real cases, and how many false alarms?

## Accuracy paradox

**The con:** A model boasts a high "accuracy" that it earned by barely doing its job.

If only 2% of buildings have a fire-code violation, a lazy inspector who declares
*every* building "fine" is right 98% of the time. Impressive accuracy—and
completely useless, because it never catches a single violation. The accuracy
paradox is that when one outcome is rare, "percent correct" is dominated by the
easy majority and says almost nothing about performance on the cases you actually
care about. A glowing accuracy figure can hide a system that is wrong nearly
every time it raises a flag.

**How to catch it:** Ignore overall accuracy for rare events. Ask instead: of the
cases it flagged, how many were real? Of the real cases, how many did it catch?

## False positive paradox

**The con:** When the target is rare enough, most alarms are false—even from a near-perfect detector.

A face-recognition system that is 99.9% accurate sounds flawless. But aim it at a
crowd where only 1 in 100,000 people is on a watchlist, and the few real matches
are buried under a flood of false ones—because even 0.1% of a very large crowd is
a lot of people. This is the false positive paradox: *rarity*, not poor
technology, is what makes the alarms untrustworthy. No amount of marketing about
accuracy changes the arithmetic of who actually gets stopped.

**How to catch it:** Multiply it out. Take the real numbers—how many people, how
rare the target, what the error rate is—and count the true and false alarms
directly. That ratio, not the accuracy headline, tells you whether to trust an
alert.

## Reference group bias

**The con:** Rigging a comparison by quietly putting the wrong people in the "baseline" group.

Studies once suggested that moderate drinkers outlive teetotalers—until people
asked who was in the "non-drinker" group. It held not only lifelong abstainers
but also ex-drinkers who had quit *because they were already sick*. Next to that
unhealthy baseline, almost anyone looks healthy. Reference group bias is when the
comparison group is contaminated or ill-chosen, so the contrast measures
something other than what it claims, and the "effect" you find is really an
artifact of whom you chose to compare against.

**How to catch it:** Interrogate the baseline. Ask exactly who is in the
comparison group, and whether they differ from the treatment group in ways that
have nothing to do with the supposed cause.

## Confusion of the inverse

**The con:** Assuming that "most A are B" tells you "most B are A."

Most professional basketball players are tall, but most tall people are not
professional basketball players. The two statements feel interchangeable yet are
wildly different, because each depends on how many tall people and how many
players there are in total. Confusion of the inverse swaps the direction of a
conditional claim—treating the chance of A given B as if it were the chance of B
given A. A headline that "few child prodigies become star adults" does *not*
establish that "few star adults were child prodigies"; that second figure depends
entirely on how many late bloomers there are.

**How to catch it:** Whenever you read "X% of A are B," ask whether the argument
secretly assumes the reverse—and remember that the answer depends on the totals
on each side.

## Regression to the mean

**The con:** Mistaking the natural settling-down of an extreme group for the effect of whatever you did to them.

Pick out the people—or teams, patients, schools, drivers—who did unusually badly last time, do *something* to them, and measure again: they will almost always look better, whether or not your something worked. An extreme measurement is part real and part luck, and luck does not repeat. The sickest patients, the lowest-scoring students, the accident-blackspot junctions were partly just having a bad spell, and next time the bad luck averages out. Regression to the mean manufactures improvement from the bottom (and decline from the top) with no cause at all—and it is forever sold as the triumph of a treatment, a training course, or a new speed camera.

**How to catch it:** Ask whether the group was chosen for being extreme, and whether there is a comparison group that was equally extreme but left alone. Without one, expect a chunk of any "improvement" for free.

## Proxy bias

**The con:** Optimising a convenient stand-in for the thing you actually care about—and inheriting every bias baked into the stand-in.

The outcome you truly want is often hard to measure, so you reach for a proxy: past hiring decisions instead of "who is good at the job," arrests instead of crime, clicks instead of worth. But the proxy carries its own history. Train a model to reproduce past decisions and it reproduces the prejudices in them—faithfully and at scale—while looking neutral, because the sensitive detail was never fed in directly. The bias simply re-enters through whatever the proxy is correlated with. You end up with a system that is superb at predicting the proxy and quietly wrong about the goal.

**How to catch it:** Separate the thing being predicted from the thing you care about, and ask how they differ. If the target was produced by a process you would not trust—biased humans, over-policed streets, a skewed past—assume the model has learned that process, not the truth.

## Small samples

**The con:** Reading a real effect into a result that a handful of cases—sometimes a single one—could have thrown up by luck alone.

The smaller the sample, the more room chance has to fool you. With enough cases the flukes cancel out and a genuine pattern shows through; with only a few, one oddball can *be* the result. It is why even the sacred safeguard of randomisation quietly fails on tiny groups: flipping a coin to split two plants, or two patients, or two schools, equalises the groups on nothing—it merely assigns the treatment. This is not a rule that "few is always worthless"—a couple of cases watched closely over a long stretch, with a sharp change at the moment something is done to them, can be quite telling. It is a warning that when the evidence is thin, "the treatment worked" and "that one was always going to be different" are hard to tell apart.

**How to catch it:** Ask how much the claim really rests on—how many independent cases, and how much you actually saw of each. A single before-and-after on one unit is a story; the same unit tracked closely through the change, or many units compared, is where confidence should start.

## Observer expectancy

**The con:** Letting the person who runs the study—hoping for a particular result—quietly shape it into being.

When whoever measures, tends, or judges knows which subjects are "supposed" to respond, that knowledge leaks—not usually through fraud, but through a thousand small, unconscious nudges: the treated plant watered a little less, the promising patient examined more hopefully, the borderline case rounded the convenient way, the improvement noticed a beat sooner. Expectation is a real cause, and when it lines up with the treatment it becomes indistinguishable from it. This is why serious experiments are run *blind*: the people handling and assessing the subjects are kept from knowing who got what, so the outcome cannot be bent—however honestly—toward the answer everyone is hoping for.

**How to catch it:** Ask who knew which subjects were being treated while the study ran, and whether that knowledge could have touched how the subjects were handled or how the results were recorded. If the hopeful experimenter also did the measuring, expect a thumb on the scale—even an innocent one.
