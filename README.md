# 🇮🇳 Indian Startup Funding Analysis

![Python](https://img.shields.io/badge/Python-Data%20Analysis-blue)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-purple)
![SQL](https://img.shields.io/badge/SQL-Analysis-orange)
![Data Analytics](https://img.shields.io/badge/Data%20Analytics-Portfolio-yellow)
![Statistics](https://img.shields.io/badge/Statistics-Analysis-green)
![Status](https://img.shields.io/badge/Project-Completed-success)

> A data analytics project analysing 100 recently funded Indian startups
> across funding stages, industries, deal sizes, funding concentration,
> and monthly funding activity using Python, Pandas, NumPy, Matplotlib,
> Seaborn, and SQL.

---

# 📊 Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Startups | **100** |
| Total Disclosed Funding | **$1.316B** |
| Average Funding per Startup | **$15.13M** |
| Median Funding per Startup | **$3.00M** |
| Largest Single Round | **$304.53M** |
| Funding Disclosure Coverage | **87%** |
| Funding Stages | **10** |
| Reporting Period | **January–February 2026** |

The difference between the average funding of **$15.13M** and median
funding of **$3.00M** indicates that the overall funding total is heavily
influenced by a relatively small number of large funding rounds.

---

# 📈 Key Findings

## 💰 Funding Distribution Analysis

The dataset contains **87 startups with disclosed funding amounts**.

| Statistic | Value |
|---|---:|
| Disclosed Funding Records | **87** |
| Mean Funding | **$15.13M** |
| Median Funding | **$3.00M** |
| Minimum Funding | **$82,941** |
| 25th Percentile | **$1.00M** |
| 75th Percentile | **$9.90M** |
| Maximum Funding | **$304.53M** |
| Standard Deviation | **$40.49M** |

The funding distribution is strongly right-skewed. Most disclosed deals
are below **$10M**, while a small number of large rounds extend to
approximately **$304.5M**.

---

# 🏆 Top 10 Startups by Funding

The largest funding rounds have a substantial effect on the overall
funding total.

| Rank | Startup | Funding |
|---:|---|---:|
| 1 | **Aditya Birla Housing Finance** | **$304.53M** |
| 2 | **Major Large-Round Startup** | **Large Deal** |
| 3 | **Major Large-Round Startup** | **Large Deal** |
| 4 | **Major Large-Round Startup** | **Large Deal** |
| 5 | **Major Large-Round Startup** | **Large Deal** |
| 6 | **Major Large-Round Startup** | **Large Deal** |
| 7 | **Major Large-Round Startup** | **Large Deal** |
| 8 | **Major Large-Round Startup** | **Large Deal** |
| 9 | **Major Large-Round Startup** | **Large Deal** |
| 10 | **Major Large-Round Startup** | **Large Deal** |

The **10 largest deals account for 70.95% of all disclosed funding**.

A single round by **Aditya Birla Housing Finance**, valued at approximately
**$304.5M**, represents about **23.1%** of total disclosed funding.

---

# 💼 Funding Stage Analysis

| Funding Stage | Key Observation |
|---|---|
| Pre-Seed | Early-stage activity |
| Seed | **Largest number of deals** |
| Series A | Growth-stage funding |
| Series B | Expansion-stage funding |
| Series C | Later-stage funding |
| Series D | Advanced growth funding |
| Series E | Later-stage funding |
| Series F | Later-stage funding |
| Series G | Late-stage funding |
| Private Equity | **Highest share of disclosed capital** |

### Seed Stage

**44 startups**, representing **44% of all deals**, are classified as
Seed-stage funding.

However, Seed accounts for only approximately **6.3% of total disclosed
capital**.

### Private Equity

Private Equity represents only **7% of the startups**, but accounts for
approximately **53.6% of total disclosed funding**.

This demonstrates a substantial difference between **deal volume** and
**capital volume**.

---

# 🏭 Industry Analysis

| Industry | Observation |
|---|---|
| Consumer Goods | **24 startups** |
| E-commerce | **24 startups** |
| B2B Software | **23 startups** |
| Retail | **19 startups** |
| Hardware | **18 startups** |
| Manufacturing | **17 startups** |
| Finance | **16 startups** |

Consumer Goods and E-commerce are among the most frequently tagged
industries.

However, the highest-funded industries are:

| Industry | Disclosed Funding |
|---|---:|
| Finance | **$475.3M** |
| Energy | **$390.9M** |

Finance and Energy therefore attract substantial capital despite not
being the most frequently tagged industries.

> **Note:** Industry tags are not mutually exclusive. Approximately
> **96% of startups have two or more industry tags**, so industry-level
> counts and funding totals can overlap.

---

# 🔀 Industry × Funding Stage

The analysis cross-tabulated industry tags against funding stages to
identify where different sectors appear across the funding lifecycle.

This analysis helps distinguish:

- Industries with primarily early-stage activity
- Industries with later-stage funding
- Industries receiving larger capital rounds
- Differences between deal frequency and funding value

Because startups may have multiple industry tags, these totals should
be interpreted as overlapping industry classifications rather than
mutually exclusive market segments.

---

# 📅 Monthly Funding Analysis

The dataset covers two months: **January and February 2026**.

| Month | Startups Funded | Total Funding | Average Funding |
|---|---:|---:|---:|
| January 2026 | **31** | **$214.1M** | **$7.14M** |
| February 2026 | **69** | **$1.102B** | **$19.33M** |

February recorded substantially higher funding than January.

The increase was driven by both:

- A higher number of funded startups
- Larger average funding rounds

> **Important:** This is only a two-month observation window, so it
> should not be interpreted as a long-term funding trend.

---

# 📊 Funding Concentration

| Metric | Result |
|---|---:|
| Total Disclosed Funding | **$1.316B** |
| Top 10 Deal Share | **70.95%** |
| Largest Individual Deal Share | **~23.1%** |
| Median Funding | **$3.00M** |
| Average Funding | **$15.13M** |

The analysis shows that funding is highly concentrated among a small
number of large deals.

The top 10 deals alone account for more than **70%** of all disclosed
capital.

This means that aggregate funding totals can be heavily influenced by
individual transactions.

---

# ⚠️ Data Quality Analysis

| Data Quality Check | Result |
|---|---:|
| Total Records | **100** |
| Duplicate Rows | **0** |
| Duplicate Startup Names | **0** |
| Funding Amount Disclosed | **87%** |
| Funding Amount Missing | **13%** |
| Invalid/Missing Dates | **0** |
| Countries | **India** |
| Funding Stages | **10** |

The dataset contains no duplicate rows or duplicate startup names.

However, **13 of the 100 records do not have a disclosed funding
amount**.

Two of the seven Private Equity records also have undisclosed funding
amounts.

Therefore, funding totals should be interpreted as a **conservative
lower bound** rather than a complete measurement of all capital raised.

---

# 🧹 Data Cleaning & Preparation

The raw dataset was processed using Pandas.

Key preparation steps included:

- Standardizing column names
- Removing leading/trailing whitespace
- Converting funding amounts from text to numeric values
- Handling `$` symbols and thousands separators
- Treating `N/A`, `-`, and blank funding values as missing
- Converting funding dates into datetime format
- Creating funding year
- Creating funding month
- Creating funding month name
- Creating funding quarter
- Splitting multi-value industry tags
- Creating an industry-count field
- Checking duplicate records
- Auditing missing values

No records were removed during the cleaning process.

---

# 💡 Business Insights

### 1. Funding Is Highly Concentrated

The top 10 deals represent **70.95% of total disclosed funding**.

This means aggregate funding figures can be strongly influenced by a
small number of large transactions.

---

### 2. Deal Volume and Capital Volume Tell Different Stories

Seed is the most common funding stage with **44 startups**, but it
represents only **6.3% of disclosed capital**.

Private Equity represents only **7 startups**, but accounts for
approximately **53.6% of total disclosed funding**.

---

### 3. Average Funding Is Significantly Higher Than Median Funding

Average funding is approximately:

**$15.13M**

while median funding is:

**$3.00M**

The average is therefore more than five times the median, demonstrating
the effect of large funding rounds.

---

### 4. Finance and Energy Attract High Capital

Finance accounts for approximately **$475.3M** of disclosed funding,
while Energy accounts for approximately **$390.9M**.

These sectors are among the highest-funded industries even though
Consumer Goods and E-commerce have more startup tags.

---

### 5. February Recorded Much Higher Funding

Funding increased from approximately:

**$214.1M in January**

to:

**$1.102B in February**.

The number of funded startups also increased from **31 to 69**.

Average funding increased from approximately **$7.14M to $19.33M**.

---

### 6. A Single Large Deal Has a Major Effect

Aditya Birla Housing Finance recorded the largest disclosed funding
round at approximately **$304.5M**.

This represents approximately **23.1% of the entire disclosed funding
total**.

---

### 7. Early-Stage Startups Form a Large Pipeline

Seed and Pre-Seed startups together account for **56 of the 100
startups**.

Tracking these startups over future funding periods could help evaluate
whether early-stage companies progress toward larger funding rounds.

---

### 8. Funding Disclosure Is Incomplete

**13% of records** have no disclosed funding amount.

Because some undisclosed records belong to Private Equity, the missing
data may affect the measured concentration of funding.

---

# 💡 Business Recommendations

## 📊 Separate Deal Count and Capital Volume

Report funding-stage and industry rankings using two separate metrics:

- Number of deals
- Total disclosed funding

This prevents deal frequency from being confused with capital volume.

---

## 🌱 Track Seed-to-Growth Conversion

Monitor the current Seed and Pre-Seed cohort over future periods to
identify how many startups progress toward larger funding rounds.

---

## 💰 Highlight Large Individual Deals

Large deals should be reported separately when they materially affect
industry or monthly totals.

The **$304.5M Aditya Birla Housing Finance** round is a clear example.

---

## 📈 Report Median Alongside Average

Median funding should be reported alongside average funding because the
average is heavily influenced by large funding rounds.

---

## ⚠️ Improve Funding Disclosure

Future versions of the dataset should attempt to resolve the **13%
funding disclosure gap**, particularly undisclosed Private Equity
amounts.

---

## 📅 Extend the Analysis Period

The current dataset covers only January and February 2026.

A longer reporting period would allow:

- Monthly trend analysis
- Quarterly comparisons
- Year-over-year analysis
- Funding-cycle analysis
- Stage progression analysis

---

## 🏭 Improve Industry Classification

Because startups can have multiple industry tags, a supplementary
single-primary-industry view could be created for mutually exclusive
industry comparisons.

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data analysis |
| Pandas | Data cleaning and transformation |
| NumPy | Numerical analysis |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| SQL | Analytical querying |
| Jupyter Notebook | Analysis environment |
| GitHub | Version control and portfolio presentation |

---

# 📊 Analysis Workflow

```text
Raw Startup Funding Data
          ↓
Data Profiling
          ↓
Data Cleaning
          ↓
Funding Amount Parsing
          ↓
Date Processing
          ↓
Industry Tag Processing
          ↓
Data Quality Checks
          ↓
Exploratory Data Analysis
          ↓
Funding Stage Analysis
          ↓
Industry Analysis
          ↓
Monthly Trend Analysis
          ↓
Outlier Analysis
          ↓
Funding Concentration
          ↓
Business Insights
          ↓
Recommendations
