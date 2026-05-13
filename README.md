# NHS-Antibiotic-Prescribing-Trends-England
Analysing regional antibiotic prescribing patterns across NHS GP practices in England (2019–2024) to identify variation that may signal antimicrobial resistance (AMR) risk.

---

## Project summary

Antimicrobial resistance is one of the most significant threats to public health in the UK. This project uses open NHS prescribing data to explore whether regional prescribing volume has changed over time, and which areas consistently prescribe above the national average.

The analysis is intended to support the kind of insight that could inform NHS Integrated Care System (ICS) planning decisions.

---

## Key questions

- Which regions show the highest antibiotic prescribing rates per 1,000 patients?
- How has prescribing volume changed year-on-year since 2019?
- Are there GP practices or ICBs that are consistent outliers?

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
| English Prescribing Data (EPD) | [NHS BSA Open Data](https://opendata.nhsbsa.net/dataset/english-prescribing-data-epd) | OGL v3 |
| GP Practice Populations | [NHS Digital](https://digital.nhs.uk/data-and-information/publications/statistical/patients-registered-at-a-gp-practice) | OGL v3 |
| Regional boundaries | [ONS Geoportal](https://geoportal.statistics.gov.uk) | OGL v3 |

All data is published under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

---

## Data governance & ethics

**No personal data is used.** The EPD dataset is aggregated at GP practice level. No patient identifiers, names, or individual records are present at any stage of this analysis.

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

[View on Tableau Public](#) ← replace link once published
