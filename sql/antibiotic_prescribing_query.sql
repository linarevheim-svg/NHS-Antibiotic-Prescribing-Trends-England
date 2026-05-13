-- NHS Antibiotic Prescribing Trends by Region
-- Source: NHS BSA English Prescribing Data (EPD)
-- BNF Chapter 5.1 = antibacterial drugs

WITH monthly_prescribing AS (

  SELECT
    EXTRACT(YEAR FROM pe.year_month) AS year,
    EXTRACT(MONTH FROM pe.year_month) AS month,
    pe.practice_code,
    pe.practice_name,
    pe.icb_name,                        -- Integrated Care Board (region)
    SUM(pe.total_quantity) AS total_items,
    SUM(pe.actual_cost) AS total_cost_gbp

  FROM
    `yhcr-prd-phm-bia-core.CY_MYSPACE_DB.english_prescribing_data` pe

  WHERE
    pe.bnf_code LIKE '0501%'            -- BNF chapter 5.1: antibiotics
    AND pe.year_month BETWEEN '2019-01-01' AND '2024-12-01'

  GROUP BY 1, 2, 3, 4, 5

),

annual_totals AS (

  SELECT
    year,
    icb_name,
    SUM(total_items) AS annual_items,
    ROUND(AVG(total_items), 0) AS avg_monthly_items

  FROM monthly_prescribing

  GROUP BY 1, 2

),

national_avg AS (

  SELECT
    year,
    ROUND(AVG(annual_items), 0) AS national_avg_items

  FROM annual_totals

  GROUP BY 1

)

SELECT
  a.year,
  a.icb_name,
  a.annual_items,
  n.national_avg_items,
  ROUND(
    (a.annual_items - n.national_avg_items) * 100.0 / n.national_avg_items, 1
  ) AS pct_above_national_avg

FROM annual_totals a
JOIN national_avg n ON a.year = n.year

ORDER BY a.year DESC, pct_above_national_avg DESC;
