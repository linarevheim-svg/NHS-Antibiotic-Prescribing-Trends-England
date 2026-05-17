# NHS-Antibiotic-Prescribing-Trends-England
Analysing regional antibiotic prescribing patterns across NHS Commissioning Regions in England (2021–2026) to identify variation that may signal antimicrobial resistance (AMR) risk.

---

## Project summary

Antimicrobial resistance is one of the most significant threats to public health in the UK. This project uses open NHS prescribing data to explore whether regional prescribing volume has changed over time, and which areas consistently prescribe above the national average.

The analysis is intended to support the kind of insight that could inform NHS Integrated Care System (ICS) planning decisions.

---

## Key questions

- How has prescribing volume changed year-on-year since 2021?
- Which NHS Commissioning Regions prescribe above the national average?
- Are there regions that are consistent outliers year on year?

---

## Tools used

| Tool | Purpose |
|------|---------|
| SQL (BigQuery) | Filtering, aggregating and joining prescribing data |
| Python (pandas, matplotlib) | Data cleaning, outlier detection, year-on-year analysis |
| Tableau Public | Interactive regional dashboard |

---

## Data sources

| Dataset | Source | Licence |
|---------|--------|---------|
| Antibacterial drugs prescribing (BNF 5.1) | [OpenPrescribing.net — Bennett Institute, University of Oxford](https://openprescribing.net/analyse) | OGL v3 |

All data is published under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

---

## Data governance & ethics

**No personal data is used.** The EPD dataset is aggregated at NHS Commissioning Region level. No patient identifiers, names, or individual records are present at any stage of this analysis.

**GDPR consideration.** If this analysis were extended to patient-level data, it would require a Data Sharing Agreement and compliance with the [NHS Data Security and Protection Toolkit](https://www.dsptoolkit.nhs.uk) under UK GDPR.

**Limitations.** Prescribing volume alone does not confirm antimicrobial resistance. Higher prescription rates may reflect population demographics, deprivation levels, or clinical need rather than inappropriate prescribing. No causal claims are made in this analysis.

---

## Project structure
├── sql/
│   └── antibiotic_prescribing_query.sql
├── notebooks/
│   └── prescribing_analysis.ipynb
├── data/
│   └── README.md  (data not stored here — see sources above)
└── dashboard/
└── tableau_public_link.md

## Dashboard
[View on Tableau Public](https://public.tableau.com/views/NHSAntibioticPrescribingEngland20212026/NHSAntibioticPrescribingEngland20212026)
