
<!-- README.md is generated from README.Rmd. Please edit that file -->

# MATH-516 Applied Statistics 2022-23

<!-- badges: start -->
<!-- badges: end -->

All course materials will come here, in this repo.

# Grading

There will be 7 projects (data analyses) in total:

1.  EM Algorithm - Daniela’s Data
    - Weeks 1 and 2 (20.2.-5.3.2023)
2.  Time Series - Global Warming? or energy prices?
    - Weeks 3 and 4 (6.3.-19.3.2023)
3.  (f)PCA - Covid data
    - Weeks 5 and 6 (20.3.-2.4.2023)
4.  Linear Mixed Models - Presidential Elections?
    - Week 7 (3.4.-23.4.2023)
      - there is Easter Break from 7.4. to 16.4., so the deadline will
        be extended to 23.4., but this will be overlapping with the next
        project
5.  GLMMs - Premier League data?
    - Week 8 and 9 (17.4.-30.4.2023)
6.  Survival Analysis - something easy?
    - Week 10 and 11 (1.5.-14.5.2023)
7.  Extreme Value Theory - Linda?
    - Week 12 and 13 (15.5.-28.52023)

Of these 7 projects, every student needs to choose 5 of them. At least
one project needs to be chosen from each of the following subsets: -
Projects 1,2,3, - Projects 4,5, - Projects 6,7. The projects will be
worked out and handed in by each student individually, but
collaborations in small groups is encouraged as long as other students’
work and ideas are attributed properly in each idividual project.

Each project handed in will receive a grade
![g_i \in \\{0,0.25,0.5,0.75,1\\}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;g_i%20%5Cin%20%5C%7B0%2C0.25%2C0.5%2C0.75%2C1%5C%7D "g_i \in \{0,0.25,0.5,0.75,1\}"),
![i=1,\ldots,5](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;i%3D1%2C%5Cldots%2C5 "i=1,\ldots,5"),
and the final grade will be calculated as

![1 + \sum g_i \in \[1,6\].](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;1%20%2B%20%5Csum%20g_i%20%5Cin%20%5B1%2C6%5D. "1 + \sum g_i \in [1,6].")

- It is possible to hand in more than 5 projects in which case the best
  5 projects will be counted towards the grade.
- If some of the project solutions are deemed worthy of a presentation
  (by the teacher), presentations will take place during the last week
  of the semester (Week 14). In this case, one of the grades
  ![g_i](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;g_i "g_i")
  can be replaced by a presentation grade
  ![p \in \\{0,0.25,0.5,0.75,1\\}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;p%20%5Cin%20%5C%7B0%2C0.25%2C0.5%2C0.75%2C1%5C%7D "p \in \{0,0.25,0.5,0.75,1\}")
  - In other words, it is possible to obtain the maximum grade (6) by
    handing in only 4 projects (still at least one projects of each of
    the three subsets above) and presenting one of them during the final
    week of the semester.

The grades
![g_i](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;g_i "g_i")
will be reflecting on the quality of the final report, which is expected
to - identify questions of interest - some initial questions will be
provided during the lectures together with the data - choose appropriate
models to analyze the data - demonstrate understanding of the models
used - implement the models in R - critically evaluate shortcomings of
your models (model diagnostics) - a good solutions provides more than
one model at first and eventually compares those - use a final model to
answer the questions of interest Apart from these, it is imperative that
the final report is - readable - figures need to have self-explanatory
captions, appropriate font size, and be generally of a decent quality -
there should be no code in the report, unless it significantly improves
clarity of the report (e.g. R table instead of a Latex table is
permitted for simplicity) and even in such a case it has to be verbally
explained around any code chunk what it does (the reader is not expected
to understand R commands) - reproducible - i.e. the R Markdown file can
be run again on a different machine inside you Github repo

# Project Submission

Each student is required to create a **private** Github repo called
`AppStat-SCIPER` where `SCIPER` is replaced by the actual 6-digit SCIPER
number of the student. The private repo needs to be shared with the
teacher and the TA. The repo will contain a folder called `Project-1` if
Project 1 is handed in, etc. All files pertinent to Project-1 submission
have to be in the `Project-1` folder.

The project report has to be created using R Markdown and has to be
fully reproducible. Hence every submitted project folder has to contain
at least - the knitted `.html` file - the corresponding `.Rmd` source
code Optionally, the folder can also contain separate R scripts that
perform parts of the analysis and are either sourced from the R Markdown
file or run aside with results saved as `.RData` that are in turn loaded
from the R Markdown file (the latter option is useful e.g. for
computationally heavy tasks).

TODO: link StatComp manuals here.

TODO: create a sample submission

In order to have a formal submission procedure (following the deadlines
above), project submissions will be open in the Moodle as “Assignments”.
Only the link into a project folder inside your Github repo is to be
submitted into the Moodle.

# Acknowledgements

This course was partially inspired by various existing courses, and the
credit goes to their creators:

- Michal Kulich & Arnost Komarek, Charles University,
- Reinhard Furrer, University of Zurich,
- Claudia Klüppelberg, Technical University of Munich,
- Juliette Blanchet (Université Grenoble Alpes) & Jennifer Wadsworth
  (Lancaster University), previously EPFL,
- Mehdi Gholam, EPFL.
