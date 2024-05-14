# R Hands-on Exercises

## License information

The contents of this repository are provided under the Creative Commons Attribution (CC-BY) 4.0 license as laid out in the LICENSE.md file.

## Background

The R projects in this repository designed for the programmers in clinical research who are familiar with programming concepts and who might have previously used SAS for data transformation and visualization. Projects have useful tips that help to connect most common SAS programming principles with techniques that are used in R. All exercises use open-source [CDISC ADaM datasets](https://github.com/phuse-org/phuse-scripts/tree/master/data/adam/cdisc) that were created for training/testing purposes.

## Why are Pfizer sharing this?

We have created these learning modules to help our colleagues migrate to using R, giving them data and tasks that will be familiar to them. By sharing these modules, we hope that others might further refine the content, adding new modules or refining the concepts in them.

## What is in this repository?

This repo consists of 14 hands-on training "MiniProjects". Each MiniProject corresponds with the R concept that the exercise is dedicated to. It is highly recommended to complete exercises 1 through 8 in order since (1) they are build on top of each other and (2) increase in complexity with each next exercise. On the other hand, exercises 9 through 14 can be completed in any order.

### List of mini-projects and their topics:

| Filename          | Topic                                                                                                                                                                                                                                        |
|---------------------|---------------------------------------------------|
| MiniProject1.Rmd  | Reading data, sorting, filtering, selecting columns, data types, data summaries using the `{skimr}` package.                                                                                                                                 |
| MiniProject2.Rmd  | Reading data (revisited), counting observations, grouping by variable, joining data, creating new variables with values derived from calculations using existing variables.                                                                  |
| MiniProject3.Rmd  | Summarising continuous variables to calculate common summary statistics like mean, median, sd, min, max. Pasting values together to create character strings containing values. Transposing datasets using `pivot_longer` and `pivot_wider`. |
| MiniProject4.Rmd  | Bringing together values calculated in previous MiniProjects to create a table.                                                                                                                                                              |
| MiniProject5.Rmd  | Creating data visualizations, saving those graphs to file, plotting points and lines, adding summary statistics into visualization, annotating visualizations - labels, titles, subtitles, legends, splitting plots by a grouping factor.    |
| MiniProject6.Rmd  | Creating "spaghetti plots" of values over time for each subject, highlighting data series that match a given condition, boxplots, plotting distribution of values, barplots to display counts, combining plots                               |
| MiniProject7.Rmd  | Turning code into functions for reuse                                                                                                                                                                                                        |
| MiniProject8.Rmd  | Iterating - applying functions to different groupings of values: alternatives to loops.                                                                                                                                                      |
| MiniProject9.Rmd  | Asking for help using reproducible examples - the `{reprex}` package.                                                                                                                                                                        |
| MiniProject10.Rmd | Debugging when code and functions go wrong.                                                                                                                                                                                                  |
| MiniProject11.Rmd | Passing variable names into functions - evaluation. R's equivalent of SAS `&var`.                                                                                                                                                            |
| MiniProject12.Rmd | Testing (and demonstrating that) functions to ensure they do what is expected. Using the `{testthat}` package. Mini-project12_Example folder includes comprehensive testing examples.                                                        |
| MiniProject13.Rmd | Code style - be kind to future you (and anyone else that reads your code).                                                                                                                                                                   |
| MiniProject14.Rmd | R snippets - Learn how to create R snippets to boost productivity and automate make repetitive tasks.                                                                                                                                        |

We recognise that many of the tasks presented in MiniProjects1-6 are covered by functionality in the [Pharmaverse](https://pharmaverse.org/) packages like {[admiral](https://github.com/pharmaverse/admiral)}, {[tidytlg](https://github.com/pharmaverse/tidytlg)} and {[tfrmt](https://github.com/GSK-Biostatistics/tfrmt)} but our goal is that colleagues understand the basic building blocks of what R is doing via functions in {[dplyr](https://dplyr.tidyverse.org/)} and other common data manipulation packages first before moving on.

### Pre-requisites, package installation and \\{renv\\}:

As these MiniProjects are written in Rmarkdown documents, explanation and code are presented together, and we only assume that delegates have access to RStudio IDE and have had an initial orientation about using the IDE and running code with Rmarkdown. We recommend using a consistent environment for delegates, such as that provided by Posit Cloud, Posit Workbench, Docker or similar. Troubleshooting R installation issues across desktop R when there might be a wide range of OS, R versions, installation paths etc. adds a huge overhead to training.

Prior to attempting exercises, run setup.R installation script to ensure proper installation of the libraries that are not installed on your machine, but needed for the projects. The code in the script checks if you have all packages necessary for exercises, otherwise installs and loads packages from CRAN.

We recommend the use of the {renv} package to manage packages associated with this application. This allows you to isolate packages and package versions used with projects in this repository from other projects.

To do so, first create a new RStudio project (if you haven't already created an RStudio project based on the Github repository). Be sure to select the option to use {renv} with the project. Open the file "setup.R". If you haven't already, you can install and activate the {renv} framework by running the commented out lines. We have tested the content in this repository using the R packages as at 2024-03-01 and we recommend installing from Posit Package Manager to get those packages at that date and install into the {renv} environment. Please select the appropriate PPM repository for your Operating System (OS). You can then install the package dependencies into the {renv} environment within the project.

### Additional resources in this repository include:

-   /img folder contains images and screenshots used by .Rmd exercises files.

-   Mini-project12_Example folder contains testing structure and scripts example.

## How should I submit questions, queries and enhancements?

You should fork this repository and submit a pull-request. Issues and questions can be raised in the Issues tab within this repository.

## Developers

-   Mike K Smith

-   Natalia Andriychuk

-   Samir Parmar

-   Leanne Vicente
