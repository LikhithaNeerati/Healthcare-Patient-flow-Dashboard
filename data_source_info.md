# Data Source Information

## Primary Dataset

| Field | Detail |
|---|---|
| **Dataset Name** | Medicare Inpatient Hospitals by Provider and Service |
| **Publisher** | Centers for Medicare & Medicaid Services (CMS) |
| **Access URL** | https://data.cms.gov/provider-data |
| **Format** | CSV (Comma-Separated Values) |
| **Coverage** | 3,000+ IPPS hospitals across all 50 U.S. states |
| **Population** | Original Medicare Part A beneficiaries |
| **License** | U.S. Government Open Data — Public Domain |
| **Cost** | Free — no registration required |

---

## Secondary Dataset

| Field | Detail |
|---|---|
| **Dataset Name** | Hospital General Information |
| **Publisher** | Centers for Medicare & Medicaid Services (CMS) |
| **Access URL** | https://data.cms.gov/provider-data/dataset/xubh-q36u |
| **Format** | CSV |
| **Coverage** | 4,000+ Medicare-certified hospitals |
| **License** | U.S. Government Open Data — Public Domain |
| **Cost** | Free — no registration required |

---

## Dataset Description

### Medicare Inpatient Hospitals by Provider and Service
This dataset provides information on inpatient discharges for Original 
Medicare Part A beneficiaries by IPPS (Inpatient Prospective Payment 
System) hospitals. It includes hospital charges, Medicare payments, 
and discharge volumes organized by hospital and Medicare Severity 
Diagnosis Related Group (DRG).

### Hospital General Information
This dataset provides general information on Medicare-certified 
hospitals including facility name, address, hospital type, ownership 
type, and overall quality ratings.

---

## Key Columns Used

### Inpatient Dataset
| Column Name | Description |
|---|---|
| `Rndrng_Prvdr_CCN` | Provider CMS Certification Number (unique hospital ID) |
| `Rndrng_Prvdr_State_Abrvtn` | Two-letter state abbreviation |
| `DRG_Desc` | Diagnosis Related Group description |
| `Tot_Dschrgs` | Total number of discharges |
| `Avg_Submtd_Cvrd_Chrg` | Average submitted covered charges |
| `Avg_Tot_Pymt_Amt` | Average total Medicare payments |
| `Avg_Mdcr_Pymt_Amt` | Average Medicare payment amount |

### Hospital General Information Dataset
| Column Name | Description |
|---|---|
| `Facility_ID` | Unique facility identifier (joins to CCN) |
| `Facility_Name` | Hospital name |
| `Hospital_Ownership` | Ownership type (non-profit, proprietary, government etc.) |
| `Hospital_Type` | Type of hospital (acute care, critical access etc.) |
| `State` | State abbreviation |

---

## Data Limitations

- Data reflects **Original Medicare Part A** beneficiaries only —
  Medicare Advantage and non-Medicare patients are excluded
- Hospitals with fewer than 11 cases for a given DRG are **suppressed**
  for patient privacy
- Charges represent what hospitals **bill**, not what is considered
  reasonable or actually paid
- Data is **not real-time** — refreshed periodically by CMS

---

## How to Download

1. Go to https://data.cms.gov/provider-data
2. Search **"Medicare Inpatient Hospitals by Provider and Service"**
3. Click **Download** → select CSV format
4. For Hospital General Information visit:
   https://data.cms.gov/provider-data/dataset/xubh-q36u

---

## Citation

> Centers for Medicare & Medicaid Services. (2024).
> *Medicare Inpatient Hospitals by Provider and Service.*
> U.S. Department of Health & Human Services.
> Retrieved from https://data.cms.gov/provider-data
