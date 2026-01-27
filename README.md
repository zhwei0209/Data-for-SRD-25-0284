# Stata analysis code (BHPS & UKHLS) — SRD-25-0284

This repository provides the Stata do-file used to import the BHPS/UKHLS data (locally), clean/prepare the analytic sample, generate key variables, and run the statistical analyses reported in the manuscript.

## Software
- Stata/SE 18.5

## Repository contents
- `Analysis scripts-SRD-25-0284.do`  
  A single do-file containing data import, cleaning, variable construction, and analysis models.

## Data access and restrictions
This study uses secondary data from the British Household Panel Survey (BHPS) and Understanding Society: the UK Household Longitudinal Study (UKHLS).
These datasets are accessed via the UK Data Service and are subject to licence and usage restrictions.
Therefore, **the raw data (and any restricted derived datasets) are not redistributed in this repository**.

Readers wishing to reproduce the analysis should obtain the relevant BHPS/UKHLS files directly from the UK Data Service under the appropriate access conditions.

## How to reproduce the analysis
1. Obtain the required BHPS/UKHLS data files via the UK Data Service.
2. Open `Analysis scripts-SRD-25-0284.do` and update the file paths in the “user settings / paths” section (near the top of the do-file) so they match your local directory structure.
3. Run the do-file in Stata/SE 18.5:
   - `do "Analysis scripts-SRD-25-0284.do"`

## Outputs
The do-file runs the statistical models and prints results to the Stata Results window.
This repository does not currently include scripts to generate publication-ready tables/figures.
(If the do-file saves logs or intermediate files locally, they will be written to the output directory specified in the path settings.)

## Notes
- Please ensure all required user-written packages (if any) are installed before running the script.
- If any file paths or dataset names differ across UK Data Service downloads/waves, adjust the relevant lines in the do-file accordingly.
