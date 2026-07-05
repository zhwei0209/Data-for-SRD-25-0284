# Stata analysis code (BHPS & UKHLS) — SRD-25-0284 — The Division of Labour and Female Partners' Relative Pay Across Phases of Parenthood: Evidence from UK Dual-earner Couples

This repository provides the Stata do-file used to import the BHPS/UKHLS data (locally), clean and prepare the analytic sample, generate key variables, and run the statistical analyses reported in the manuscript.

## Software
- Stata/SE 18.5

## Repository contents
- `Analysis scripts-SRD-25-0284.do`
  A single do-file containing data import, cleaning, variable construction, and all analysis models (FE panel regressions, Wald contrasts, KHB mediation, sensitivity and supplementary analyses).

## Data access and restrictions
This study uses secondary data from the British Household Panel Survey (BHPS) and Understanding Society, the UK Household Longitudinal Study (UKHLS). Both are accessed via the UK Data Service and are subject to licence and usage restrictions, so **no raw or derived data files are redistributed in this repository**.

- BHPS. University of Essex, Institute for Social and Economic Research. British Household Panel Survey, Waves 1-18, 1991-2009. UK Data Service. SN 5151.
- UKHLS. University of Essex, Institute for Social and Economic Research. Understanding Society, Waves 1-14, 2009-2023 and Harmonised BHPS, Waves 1-18, 1991-2009. 19th Edition. UK Data Service. SN 6614.

The analysis uses BHPS waves 6, 8, 10, 12, 14, 16, 18 (file prefixes bf, bh, bj, bl, bn, bp, br) and UKHLS main-survey waves 2, 4, 6, 8, 10, 12, 14 (file prefixes b, d, f, h, j, l, n), i.e. the waves in which weekly housework hours are collected.

## How to reproduce the analysis
1. Obtain the required BHPS/UKHLS data files via the UK Data Service.
2. Open `Analysis scripts-SRD-25-0284.do` and update the file paths in the “user settings / paths” section (near the top of the do-file) so they match your local directory structure.
3. Run the do-file in Stata/SE 18.5:
   - `do "Analysis scripts-SRD-25-0284.do"`

## Outputs
- Main FE regression tables are exported via `outreg2` to `1.doc` and `2.doc` (manuscript Tables 4 and 6).
- Sensitivity and supplementary tables are exported to `A1.doc`, `A2.doc`, and `A3.doc` (Appendix Tables A1-A3).
- Wald contrasts (`lincom`, manuscript Tables 5 and 7) and the KHB mediation results (manuscript Table 8) are printed to the Stata Results window.

## Notes
- Variable suffix `1` refers to the male partner and suffix `2` to the female partner throughout the do-file.
- If file names differ across UK Data Service downloads, adjust the relevant `use` lines accordingly.
