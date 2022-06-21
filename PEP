**Package Enhancement Plan**

**Title**: COMPASS PEP: Level 1

**CRU/Department/Division/Center**: CHSI

**IRB Number**: None

**Package Name:** COMPASS

**Package Developer(s)**: Lynn Lin

**Biostatistician(s)**: Tyler Schappe

**Supervising Biostatistician**: Josh Granek

**Original Creation Date**: 6/21/22

**Code Repo URL**: https://gitlab.oit.duke.edu/chsi-informatics/projects/compass-pep-level-1

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

1. [ ] Aim 1: Create Singularity Container for OOD
    - ??/??

1. [ ] Aim 2: Acquire Publicly Available/Shareable Flow Cytometry Dataset
    - ??/??

2. [ ] Aim 3: Process Raw Data in FlowKit
    - ??/??

3. [ ] Aim 4: Run COMPASS
    - ??/??

4. [ ] Aim 5: Publish Tutorial Code
    - ??/??
 

# Example Dataset Description

**Study design**: 

**Sequencing Method**: NovaSeq 51-bp PE

**Contact information for team member responsible for data collection/acquisition**: 

**Date or version (if downloaded, provide date)**: 

**Data transfer method and date**: 

**Where dataset is stored**: 

**Notes:**


# Package Enhancement Plan

## Aim 1: Create Singularity Container for OOD

Make an RStudio container to run FlowKit and UMAP via 'reticulate' and COMPASS.

**Python Tools:**
    [ ] FlowKit
    [ ] Scanpy
    [ ] UMAP

**R Tools:**
    [ ] Quarto
    [ ] COMPASS
    [ ] reticulate
    [ ] tidyverse

## Aim 2: Acquire Publicly Available/Shareable Flow Cytometry Dataset

- Scott mentioned there are several commonly-used datasets online
- Dataset included in FlowKit?
- Reeves data?
- Other?

## Aim 3: Process Raw Data in FlowKit

1. Import and process raw FCS files using FlowKit
2. QC checks
    1. Identical channel names
    2. Transformations
    3. Compensation
3. Create boolean vectors for all mutually exclusive subsets defined by manual gating
4. Extract events corresponding to each unique subset
5. Exploratory cluster visualization using UMAP with subsets labeled
6. Export events to suitable data object for import to R

## Aim 4: Run COMPASS

- [COMPASS Vignette](https://www.bioconductor.org/packages/devel/bioc/vignettes/COMPASS/inst/doc/COMPASS.html)
- [SimpleCOMPASS Vignette](https://www.bioconductor.org/packages/devel/bioc/vignettes/COMPASS/inst/doc/SimpleCOMPASS.pdf)

1. Import data object containing all mutually exclusive subsets
2. Create cell counts dataset
3. Create metadata object
4. Create COMPASS object
5. Exploratory figures
6. Run COMPASS model
7. Generate heatmap

## Aim 5: Publish Tutorial Code

1. Share GitLab repo via Zenodo

- Include copy of data files?
- Publish Qmd document or just link to GitLab repo with rendered Qmd


# Appendix

*This section can be used to include table shells, example figures, or anything else that does not belong in the body of the SAP but you feel should be included.*

# References

*If needed, this section can include citations to statistical methods, programming software (including R packages), and/or relevant clinical literature.*


