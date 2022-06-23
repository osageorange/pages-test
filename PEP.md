# Package Enhancement Plan

**Title**: COMPASS Package Enhancement Plan: **Level 1**

**CRU/Department/Division/Center**: CHSI

**IRB Number**: None

**Package Name:** COMPASS

**Package Developer(s)**: Lynn Lin

**Biostatistician(s)**: Tyler Schappe

**Supervising Biostatistician**: Josh Granek

**Original Creation Date**: 6/21/22

**Code Repo URL**: https://gitlab.oit.duke.edu/chsi-informatics/projects/compass-flowkit-vignette

**Data Location**: ?

**Project Goal(s)**: PEP Level 1

**Submission Deadline(s)**: ?

**Effort Estimate (optional)**:

------------------------------------------------------------------------

**Investigator Agreement**

-   The BERD Method Core's collaborative process [collaborative process](https://biostat.duke.edu/sites/biostat.duke.edu/files/12%20phases%202.pdf) has been reviewed.

-   All bioinformatic and statistical analyses included in an abstract or manuscript should reflect the work of the biostatistician(s) listed on this SAP. No changes or additional analyses should be made to the results or findings without discussing with the project biostatistician(s).

-   All biostatisticians in this SAP should be given sufficient time to review the full presentation, abstract, manuscript, or grant and be included as coauthors on any abstract or manuscript resulting from the analyses.

-   Publications resulting from this SAP are supported in part by the Duke CTSA and must cite grant number UL1TR002553 and be submitted to PubMed Central.

------------------------------------------------------------------------

**Activity Log**

6/21/2022 PEP created

------------------------------------------------------------------------

# Overall Goals

The goal of this package enhancement project is to create a tutorial for running COMPASS from raw flow cytometry data (FCS) files using FlowKit. The tutorial will be a Quarto notebook because of the mixture of Python and R tools, and to showcase the functionality of Quarto in RStudio. 

# Software Description

COMPASS is a statistical framework that enables unbiased analysis of antigen-specific T-cell subsets. COMPASS uses a Bayesian hierarchical framework to model all observed cell-subsets and select the most likely to be antigen-specific while regularizing the small cell counts that often arise in multi-parameter space. The model provides a posterior probability of specificity for each cell subset and each sample, which can be used to profile a subject's immune response to external stimuli such as infection or vaccination.


# Proposed Project Aims and Timelines 

1. [ ] Aim 1: Adapt COMPASS FlowKit Container
    - 6/24/22

1. [ ] Aim 2: Acquire Publicly Available/Shareable Flow Cytometry Dataset
    - 6/29/22

2. [ ] Aim 3: Process Raw Data in FlowKit
    - 7/6/22

3. [ ] Aim 4: Run COMPASS
    - 8/5/22

4. [ ] Aim 5: Publish Tutorial Code
    - 8/12/22
 

# Example Dataset Description

**Study design**: 

**Contact information for team member responsible for data collection/acquisition**: Scott White (scott.white@duke.edu)

**Date or version (if downloaded, provide date)**: NA

**Data transfer method and date**: NA

**Where dataset is stored**: FlowKit Python library (https://github.com/whitews/FlowKit)

**Notes:** Paired unstimulated and CMV-stimulated samples. 

| Treatment   | Description                                | Variables and Source | Specifications|
|-------------|--------------------------------------------|----------------------|---------------|
|Unstimulated |Unstimulated controls                       |E01 file label        |               |
|CMV          |Cells stimulated with cytomegalovirus       |E03 file label        |               |


# Package Enhancement Plan

## Aim 1: Adapt COMPASS FlowKit Container

Adapt Scott White's COMPASS FlowKit container with following tools:

**Python Tools:**

- [X] FlowKit 0.9.1
- [X] Scanpy
- [X] UMAP

**R Tools:**

- [X] Quarto
- [X] COMPASS
- [X] tidyverse

## Aim 2: Acquire Publicly Available/Shareable Flow Cytometry Dataset

- 8-color dataset in FlowKit data directory
   + Same files as used in the tutorials
   + Need to download by hand from dev repo
   + Try to wget from repo during container build
   + Need stimulated and unstimulated
    - Stim: CMV (E03)
    - Unstim: unstim (E01)

## Aim 3: Process Raw Data in FlowKit

1. Import and process raw FCS files using FlowKit
2. QC checks
    1. Identical channel names
    2. Transformations
    3. Compensation
3. Create boolean vectors for all mutually exclusive subsets defined by manual gating
4. Extract events corresponding to each unique subset
5. Calculate counts for each subset
6. Export counts to suitable data object for import to R

## Aim 4: Run COMPASS


- [COMPASS Vignette](https://www.bioconductor.org/packages/devel/bioc/vignettes/COMPASS/inst/doc/COMPASS.html)
- [SimpleCOMPASS Vignette](https://www.bioconductor.org/packages/devel/bioc/vignettes/COMPASS/inst/doc/SimpleCOMPASS.pdf)

- Meet with Frances to get help with this

1. Import data object containing all mutually exclusive subsets
2. Create cell counts dataset
3. Create metadata object
4. Create COMPASS object
5. Exploratory figures
6. Run COMPASS model
7. Generate heatmap

## Aim 5: Publish Tutorial Code

Mirror GitLab repo on GitHub [instructions](https://docs.gitlab.com/ee/user/project/repository/mirror/push.html#set-up-a-push-mirror-from-gitlab-to-github)

1. Show a rendered HTML with code and results
2. Link to GitHub repo in FlowKit tutorials
3. Post final files on Zenodo?
    - Include copy of data files?
    - Publish Qmd document or just link to GitLab repo with rendered Qmd

# Appendix

*This section can be used to include table shells, example figures, or anything else that does not belong in the body of the SAP but you feel should be included.*

# References

*If needed, this section can include citations to statistical methods, programming software (including R packages), and/or relevant clinical literature.*


