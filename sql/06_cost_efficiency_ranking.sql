SELECT
    Rndrng_Prvdr_St,
    SUM(Tot_Dschrgs) AS total_admissions,
    ROUND(AVG(Avg_Tot_Pymt_Amt), 2) AS avg_payment,
    RANK() OVER (ORDER BY AVG(Avg_Tot_Pymt_Amt) ASC) AS cost_efficiency_rank
FROM inpatient_data
GROUP BY Rndrng_Prvdr_St


