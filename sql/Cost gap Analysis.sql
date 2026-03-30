SELECT
    Rndrng_Prvdr_State_Abrvtn,
    ROUND(AVG(Avg_Submtd_Cvrd_Chrg), 2) AS avg_charges,
    ROUND(AVG(Avg_Tot_Pymt_Amt), 2) AS avg_payments,
    ROUND(AVG(Avg_Submtd_Cvrd_Chrg) - AVG(Avg_Tot_Pymt_Amt), 2) AS cost_gap
FROM inpatient_data
GROUP BY Rndrng_Prvdr_State_Abrvtn
ORDER BY cost_gap DESC;
