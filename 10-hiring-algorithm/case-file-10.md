---
number: 10
slug: hiring-algorithm
title: "The Screening Algorithm"
detective: "Nora Nightingale"
author: "Dylan Thurgood"
difficulty: 3
topics: [Machine learning, Algorithmic fairness, Hiring]
fallacies: [Proxy bias]
summary: "An AI screens résumés blind to name and gender, and calls itself fair. It learned to hire from a decade of the company's own biased decisions."
---

# The Screening Algorithm

## **The crime scene**

Prysmory Systems is the fastest-growing technology company in the Republic of Harland. They develop frontier technology solutions for their clients and have become extremely popular among young computer science graduates in the last couple of years, with the number applications per graduate-entry software developer position having risen from double digits to almost 2,500. The perks of working at Prysmory Systems are obvious. Graduates earn twice as much as their professors will ever earn from Day 1, the work culture is all about flexibility - you can work whenever and from wherever you like as long as you meet your targets -, and benefit from private healthcare as well as a wide range of professional development opportunities. In other words, applying is a no-brainer for young professionals in the field. 

While this is great in principle for Prysmory Systems, as it has access to a huge pool of talent, it has introduced a massive challenge for its HR department, which despite tripling in size cannot keep up with the number of applications. Claudia Linston, Director of HR, recently commented that Prsymory Systems used to have a six-stage recruitment process but this is no longer feasible. She is worried that her colleagues facing this extreme number of applications will spend less and less time on reviewing the applications. "If I'm being honest, I reckon it's down to six seconds on average per application. However, the truth is also that a significant proportion are probably just sent rejections without opening them, which is incredibly unfair. We will still attract top talent, but over time this will start hurting our reputation," she explained.

Linston is relieved that a solution is in sight. "We are going to delegate the initial screening of applications to our internal AI system. This will not only mean that each application receives equal attention but also that it will be fairer, as it will never see an applicant's name, gender, or ethnicity, which removes major potential sources of discrimination. It only evaluates information relevant to performance on the job, which is prior education and work experience, technical skills, keywords in their curriculum vitae, and how closely an applicant resembles employees who have been successful at Prysmory Systems in the past. We have trained it on data from all 30,000 applications made during the first five years of Prysmory Systems, during which we were still on top of hiring in terms of capacity. Anyone surpassing a score of 80 out of 100 will be invited to interview," she said.

Even though Prysmory Systems has been a pioneer company throughout, the shift to delegating the initial application screening entirely to AI is unprecedented in the country. Nora Nightingale has been asked to investigate the new hiring regime. "It is of course a paradoxical situation for Prysmory Systems. Which company wouldn't want all talent to apply to work with them! It is clear that without drastically expanding their HR department, they will have to resort to some form of algorithmic hiring. As much as public opinion in the country is understandably aligned on wanting human decisions, algorithmic hiring need not necessarily be harmful. Nevertheless, I'm very concerned when these systems are hastily implemented, as seems to be the case with Prysmory Systems, since a lot of things can go wrong. For this reason, I demand a thorough investigation of the new hiring system and more transparency about how the hiring algorithm was trained," she outlined.<br><br>


### <span style="font-size: 0.9em;">**Exhibit 1:** The algorithms' training data<br><br>

The algorithm was trained on the entire written application materials (CV and cover letter) submitted by the following applicants during the first five years of the company's existence:

| **Group** | **Applicants** | **Hires** | 
|:----------:|:---------:|:---------:|
| Male     | 20,000      | 2,400   |
| Female   | 10,000      | 600    |
| Total   | 30,000   | 3,000     |

This month, Prysmory Systems is recruiting four new graduate-entry software developers. Nora Nightingale is curious about the AI scores for the current applicant pool.<br><br>

### <span style="font-size: 0.9em;">**Exhibit 2:** Algorithm scores for the current applicant pool <br><br>

| **Group** | **Applicants** | **Average algorithm score [minimum - maximum]** | **Share invited to interview (score >= 80)** |
|:----------:|:---------:|:---------:|:---------:|
| Male     | 6,000      | 57.4 [0 - 96.8]   |  0.5% |
| Female   | 4,000      | 52.9 [4.2 - 95.1]    | 0.4% |
| Total   | 10,000   | 55.6 [0 - 96.8]    | 0.46% |

As Prysmory Systems rolls out the screening algorithm, it decides to have 20% of the applications reviewed by human recruiters to ensure that the algorithm's choices are closely aligned with recruiters' selection intentions and to satisfy the Directorate for Algorithmic Oversight (DAO).<br><br>

### <span style="font-size: 0.9em;">**Exhibit 3:** Human audit of a random sample of 2,000 applications <br><br>

| **Group** | **Number audited** | **Score >= 80 according to recruiter** | **Of which score < 80 according to algorithm** |
|:----------:|:---------:|:---------:|:---------:|
| Male     | 1,200      |  10  |  3 |
| Female   | 800      |   7  |  3 |
| Total   | 2,000   | 17    | 6 |

Nora Nightingale's response to being shown Exhibits 1-3 was short: "I'm not satisfied." Why?<br><br>


## The interrogation

1. What information does the algorithm use to make its predictions?

2. What was the algorithm trained to predict?

3. Does what the algorithm was trained to predict differ from the company’s intended aim?

4. Based on Exhibit 1, which proportion of male and female applicants were hired in the first five years of the company's existence? What might explain this?

5. Based on Exhibit 2, do male and female applicants receive similar score distributions from the algorithm?

6. Can you conclude from Exhibit 2 that the algorithm is unfair? Why or why not? 

7. What do you learn from the audit detailed in Exhibit 3?

8. Do you agree with Linston's statement that the algorithm removes potential demographic biases? 

9. Everything considered, would you deem the hiring algorithm fair?

10. Which additional information would be helpful to be included in the training data?<br><br>  


## Answers

1. The algorithm assesses all the written application materials (CV and cover letter), evaluating prior education and work experience, technical skills, keywords, and how closely an applicant resembles employees who have been successful at Prysmory Systems in the past. It is not fed the applicant's name, gender, or ethnicity explicitly.

2. The algorithm was trained to predict which applicants were most likely to get hired based on the patterns learned from all hiring decisions in the first five years of the company's existence.

3. Yes. The algorithm was trained to predict which applicants resemble employees who were hired in the past. However, the company's aim is to invite the most qualified applicants for interview, which is not necessarily congruent. If previous hiring decisions were affected by systematic demographic bias, then the algorithm may select those more similar to the employees previously hired rather than those who are objectively the most qualified candidates. As a result, the algorithm might reproduce past hiring patterns and perpetuate bias instead of neutrally evaluating applicant performance.

4. Exhibit 1 shows that 12% of male applicants and 6% of female applicants were hired during the first five years. This discrepancy could be due to male applicants being more qualified on average or recruiting bias against female applicants, resulting in discriminatory hiring patterns.

5. No. Male applicants have a higher average score than female applicants (57.4 vs 52.9) and a higher proportion of male applicants is invited to interview (0.5% vs 0.4%).

6. Exhibit 2 on its own is insufficient for concluding this. The score distributions show that the algorithm produces different outcomes for male and female applicants, but they do not explain why these differences occur. They could reflect genuine differences in applicant qualifications, biases inherited from the training data, or other factors. Additional evidence is needed to determine whether qualified applicants are being treated differently.

7. The audit compares to what extent the algorithm's scores are consistent with recruiter judgement. It shows that the false negative rate, i.e. the proportion of female applicants that recruiters would have invited for interview that the algorithm did not pick, is higher for female than male applicants (3/7 = 42.9% vs 3/10 = 30.0%), meaning that the algorithm incorrectly screens out qualified female applicants more often than qualified male applicants. This indicates that the algorithm is systematically biased towards disadvantaging female applicants.

8. No. Although the algorithm does not explicitly use information on the applicant's name, gender, or ethnicity, the data it was trained on already contained gender bias. The problem is that gender may be revealed indirectly through parts of the CV or cover letter (e.g. mentioning 'Women's Chess Club Captain' or the name of a girls' school). The audit demonstrates that qualified female applicants are rejected at a higher rate, suggesting that simply excluding gender as an input to the algorithm does not eliminate bias.

9. Based on the available evidence, the algorithm does not appear fair, as it systematically discriminates against female applicants, which raises the concern that fully delegating the initial application screening to the algorithm without modifying it will lead to the perpetuation of gender inequality rather than making more neutral recruiting decisions. Before its implementation in recruitment, the algorithm should be redesigned to predict the company's true aim of hiring the most qualified candidates and evaluated whether it meets minimum fairness criteria without dropping in overall predictive performance.

10. The training data only included information on the applicants who were hired but not whether they turned out to be strong performers on the job. The latter group of employees is whom the company seeks to hire.<br><br>


## What went wrong

The algorithm did not assess the quality of the algorithm's training data and whether it contained any systematic demographic biases. As the case shows, bias can emerge through proxy keywords or phrases (e.g. 'Captain of Women's Chess Club') despite the demographic in question not being explicitly supplied. The phrase 'garbage in, garbage out' captures this precisely: the quality of an algorithm's outputs can only be as good as the training data underlying it.<br><br>


## Background

Amazon, in the past, developed a machine learning system to help screen job applications by learning patterns from historical hiring data. However, because the model was trained on CVs submitted over a 10-year period, during which the technical workforce was predominantly male, it learned to favour characteristics associated with male applicants. The system reportedly penalised CVs containing terms such as "women's" (e.g. "women's chess club captain") and gave lower ratings to graduates from certain women's colleges. Despite attempts to correct these issues, Amazon ultimately abandoned the tool after discovering that it could not reliably eliminate gender bias. This illustrates how machine learning models can inherit and amplify biases present in historical data, even when protected characteristics such as gender are excluded from the model's inputs.<br><br>


## Sources

- Dastin, J. (2022). Amazon scraps secret AI recruiting tool that showed bias against women. In Ethics of data and analytics (pp. 296-299). Auerbach Publications.