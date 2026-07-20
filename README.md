# 🚢 HarborIQ — Maritime Shipping Intelligence Platform

<p align="center">
  <img src="PowerBI Dashboards/images/oregon-marine-construction-architectural-engineering-heavy-equipment-dock-blue-anchor-icon.jpg" alt="HarborIQ Logo" width="120"/>
</p>

<p align="center">
  <strong>A full-stack data analytics project for global maritime shipping operations</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.9+-blue?logo=python" alt="Python"/>
  <img src="https://img.shields.io/badge/MySQL-8.0+-orange?logo=mysql" alt="MySQL"/>
  <img src="https://img.shields.io/badge/Power%20BI-Desktop-yellow?logo=powerbi" alt="Power BI"/>
  <img src="https://img.shields.io/badge/Records-358%2C990-green" alt="Records"/>
  <img src="https://img.shields.io/badge/Status-Complete-brightgreen" alt="Status"/>
</p>

---

## 📖 Project Overview

**HarborIQ** is an end-to-end data analytics platform built to analyze and visualize global maritime shipping operations. The project covers the full data analytics lifecycle — from raw data ingestion and cleaning through exploratory analysis, SQL querying, and interactive Power BI dashboards.

The platform processes **~359,000 real-world shipment records** spanning 6 international carriers, 300 customers, and 7 of the world's largest container ports, generating actionable business insights for logistics decision-makers.

---

## 🎯 Business Objectives

- Identify **shipment delay patterns** by carrier, port, cargo type, and season
- Analyze **financial performance** across carriers, customers, and trade lanes
- Segment **customers** by credit tier and revenue contribution
- Track **carrier reliability** through on-time delivery rates and damage frequency
- Surface **KPIs** for executive dashboards and operational reporting
- Provide **strategic recommendations** to reduce costs and improve SLA compliance

---

## 🗂️ Project Structure

```
HarborIQ/
│
├── 📁 Dataset/                         # Raw and cleaned data files
│   ├── shipments.csv                   # Raw shipment records (~84MB, 358,990 rows)
│   ├── cleaned_shipments.csv           # Cleaned & processed shipments (~84MB)
│   ├── customers.csv                   # Customer reference data (300 records)
│   ├── carriers.csv                    # Carrier reference data (6 carriers)
│   └── ports.csv                       # Port reference data (7 ports)
│
├── 📁 Python/                          # Jupyter Notebooks for analysis
│   ├── 01_Data_Loading.ipynb           # Data ingestion and schema validation
│   ├── 02_Data_Cleaning.ipynb          # Data cleaning and preprocessing
│   ├── 03_Exploratory_Data_Analysis.ipynb  # Statistical EDA and profiling
│   ├── 04_Data_Visualization.ipynb     # Charts, heatmaps, and visualizations
│   ├── 05_Business_Insights.ipynb      # Business KPIs and narrative insights
│   └── shipment_summary.csv            # Descriptive statistics output
│
├── 📁 SQL/                             # MySQL query scripts
│   ├── 01_Database_Setup.sql           # Database creation and schema
│   ├── 02_Data_Inspection.sql          # Data quality checks
│   ├── 03_Basic_Queries.sql            # Foundational queries
│   ├── 04_Shipment_Analysis.sql        # Shipment volume and status analysis
│   ├── 05_Customer_Analysis.sql        # Customer revenue and segmentation
│   ├── 06_Carrier_Analysis.sql         # Carrier performance analysis
│   ├── 07_Delay_Analysis.sql           # Delay patterns and penalty analysis
│   ├── 08_Financial_Analysis.sql       # Revenue and cost analysis
│   ├── 09_Advanced_SQL.sql             # Window functions, subqueries, CASE
│   ├── 10_Business_KPIs.sql            # Executive KPI queries
│   ├── 11_Views.sql                    # Reusable SQL views
│   └── 12_PowerBI_Dataset.sql          # Queries optimized for Power BI
│
├── 📁 PowerBI Dashboards/              # Power BI dashboard files
│   ├── Dashboard.pbix                  # Main interactive dashboard (~12MB)
│   └── images/                         # Logo and background assets
│
├── 📄 Business_Insights.md            # ← Business insights report
├── 📄 README.md                        # ← This file
└── 📄 requirements.txt                 # ← Python dependencies
```

---

## 🛠️ Technology Stack

| Layer | Technology | Purpose |
|---|---|---|
| **Programming** | Python 3.9+ | Data processing, EDA, visualization |
| **Data Manipulation** | Pandas, NumPy | Dataframe operations, statistical analysis |
| **Visualization** | Matplotlib, Seaborn | Charts, plots, heatmaps |
| **Database** | MySQL 8.0+ | Relational data storage and SQL analytics |
| **BI Tool** | Microsoft Power BI Desktop | Interactive executive dashboards |
| **Notebook** | Jupyter Notebook / JupyterLab | Interactive code execution |

---

## 📊 Dataset Overview

### Tables / Files

| File | Records | Description |
|---|---|---|
| `shipments.csv` | ~358,990 | Core shipment transaction data |
| `customers.csv` | 300 | Customer company master data |
| `carriers.csv` | 6 | Shipping carrier reference data |
| `ports.csv` | 7 | Port reference data |

### Key Shipment Fields

| Field | Type | Description |
|---|---|---|
| `shipment_id` | String | Unique shipment identifier |
| `customer_id` | String | Reference to customer |
| `carrier_name` | String | Shipping carrier name |
| `origin_port` | String | Port of departure |
| `destination_port` | String | Port of arrival |
| `shipment_value_usd` | Float | Cargo value in USD |
| `transit_duration_hours` | Float | Total transit time |
| `delay_duration_hours` | Float | Delay duration (0 = on time) |
| `late_arrival_flag` | String | Yes / No delay indicator |
| `is_damaged` | String | Yes / No damage indicator |
| `cargo_type` | String | Type of cargo |
| `container_type` | String | Container specification |
| `temperature_celsius` | Float | Ambient temperature recorded |
| `humidity_percent` | Float | Ambient humidity recorded |
| `total_delay_penalty_usd` | Float | Financial penalty for delay |
| `status` | String | Shipment status |
| `departure_timestamp` | DateTime | Departure date/time |

### Key Statistical Summary

| Metric | Value |
|---|---|
| Avg Shipment Value | $71,086 USD |
| Median Shipment Value | $51,990 USD |
| Max Shipment Value | $500,000 USD |
| Avg Transit Duration | ~324.6 hours |
| Avg Delay Duration | ~14.97 hours |
| Max Delay | 400 hours |
| Avg Delay Penalty | $263.28 USD |
| Max Delay Penalty | $10,506 USD |
| Avg Temperature | 17.6°C |
| Avg Humidity | 61.4% |

---

## 🚀 Getting Started

### Prerequisites

- Python 3.9 or higher
- MySQL 8.0 or higher
- Microsoft Power BI Desktop (for dashboards)
- Jupyter Notebook or JupyterLab

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/HarborIQ.git
cd HarborIQ
```

### 2. Set Up Python Environment

```bash
# Create and activate virtual environment
python -m venv venv

# Windows
venv\Scripts\activate

# macOS / Linux
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
```

### 3. Set Up MySQL Database

```bash
# Log into MySQL
mysql -u root -p

# Run the database setup script
SOURCE SQL/01_Database_Setup.sql;
```

Then import the CSV data into MySQL using MySQL Workbench or the `LOAD DATA INFILE` command.

### 4. Run Python Notebooks

Launch Jupyter and run notebooks in sequence:

```bash
jupyter notebook
```

Open notebooks in order:
1. `Python/01_Data_Loading.ipynb`
2. `Python/02_Data_Cleaning.ipynb`
3. `Python/03_Exploratory_Data_Analysis.ipynb`
4. `Python/04_Data_Visualization.ipynb`
5. `Python/05_Business_Insights.ipynb`

### 5. Open Power BI Dashboard

Open `PowerBI Dashboards/Dashboard.pbix` in **Microsoft Power BI Desktop**.

---

## 📈 Analysis Workflow

```
Raw Data (CSV)
     │
     ▼
[01] Data Loading        → Schema validation, data types, shape check
     │
     ▼
[02] Data Cleaning       → Null handling, outlier treatment, column normalization
     │
     ▼
[03] EDA                 → Distributions, correlations, statistical profiling
     │
     ▼
[04] Visualization       → Matplotlib/Seaborn charts, heatmaps, trend plots
     │
     ▼
[05] Business Insights   → KPIs, narrative summaries, actionable findings
     │
     ├──► MySQL Database  → 12 SQL scripts for structured querying
     │         │
     │         ▼
     │    Power BI         → Interactive executive dashboard
     │
     └──► Business_Insights.md → Full written report
```

---

## 🔍 SQL Analysis Modules

| Script | Focus Area | Key Queries |
|---|---|---|
| `01_Database_Setup.sql` | Database creation | Schema, DESCRIBE |
| `02_Data_Inspection.sql` | Data quality | NULL checks, duplicates |
| `03_Basic_Queries.sql` | Foundation | Counts, distinct values |
| `04_Shipment_Analysis.sql` | Shipments | Status, cargo type, origin/destination |
| `05_Customer_Analysis.sql` | Customers | Revenue ranking, credit tier, inactive accounts |
| `06_Carrier_Analysis.sql` | Carriers | Performance, delay, damage, on-time rates |
| `07_Delay_Analysis.sql` | Delays | Patterns, penalties, duration analysis |
| `08_Financial_Analysis.sql` | Financials | Revenue totals, top performers |
| `09_Advanced_SQL.sql` | Advanced | Window functions, HAVING, CASE, subqueries |
| `10_Business_KPIs.sql` | KPIs | Executive metrics and scorecards |
| `11_Views.sql` | Views | Reusable query views for reporting |
| `12_PowerBI_Dataset.sql` | Power BI | Optimized queries for BI consumption |

---

## 📊 Power BI Dashboard Features

The interactive dashboard (`Dashboard.pbix`) includes:

- **Executive KPI Cards** — Total shipments, revenue, delay rate, avg shipment value
- **Carrier Performance Table** — Rankings by revenue, delays, and on-time %
- **Customer Revenue Chart** — Top customers by total shipment value
- **Port Activity Map** — Shipment volume by origin/destination port
- **Monthly Trend Line** — Revenue and shipment count over time
- **Delay Analysis Chart** — Delay distribution by carrier and cargo type
- **Shipment Status Donut** — Delivered vs. In-Transit vs. Delayed vs. Cancelled

---

## 💡 Key Business Insights

| Category | Insight |
|---|---|
| **Volume** | ~359,000 shipments processed across 6 carriers and 7 major ports |
| **Revenue** | Average shipment value of $71,086 with a wide range ($2K–$500K) |
| **Delays** | Median delay = 0 hours; top 25% see 16+ hour delays — focus on the tail |
| **Carriers** | Maersk leads with highest fleet size, capacity, and customer rating (4.7/5) |
| **Customers** | Multi-country customer base with 4-tier credit segmentation (Platinum to Bronze) |
| **Ports** | Shanghai and Singapore dominate capacity; high volume = high congestion risk |
| **Financials** | Delay penalties average $263 but max at $10,506 — a major cost optimization lever |
| **Environment** | Temperature range -25°C to +42°C requires robust cold-chain monitoring |

For the full analysis, see [Business_Insights.docx](Business%20Insights/Business_Insights.docx).

---

## 🤝 Contributing

Contributions, bug reports, and suggestions are welcome!

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m "Add: your feature description"`)
4. Push to your branch (`git push origin feature/your-feature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Nilesh Kamble**  
Data Analyst | Python | SQL | Power BI  

---

## 🙏 Acknowledgements

- Dataset inspired by real-world maritime logistics operations
- World port capacity data sourced from public port authority reports
- Carrier profiles based on publicly available fleet information

---

*HarborIQ — Turning maritime data into navigational intelligence* 🌊
