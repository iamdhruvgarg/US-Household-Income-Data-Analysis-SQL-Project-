# SQL Data Cleaning and EDA on US Household Income Dataset

## 📌 Project Overview  
This project demonstrates how to use SQL for **data cleaning** and **exploratory data analysis (EDA)** on a real-world dataset of **US household incomes**. 
The Source of the dataset is from Analyst Builder Website.
The goal is to showcase end-to-end SQL skills including:  
- Creating tables and importing raw data  
- Cleaning and standardizing data  
- Handling duplicates and missing values  
- Running exploratory queries to derive insights  

---

## 📂 Dataset Description  
The project uses two datasets:  
1. **USHouseholdIncome.csv** → Contains geographical and demographic details such as state, county, city, land area, water area, latitude, and longitude.  
2. **USHouseholdIncome_Statistics.csv** → Contains statistical measures such as mean, median, and standard deviation of household incomes.  

Both datasets were imported into SQL and linked using a common key (`id`).  

---

## 🛠️ Tools & Technologies Used  
- **SQL (MySQL)**  
- **CSV Datasets**  
- **GitHub for version control & documentation**  

---

## 🔍 Data Cleaning Steps  
Key cleaning operations performed in `Cleaning.sql`:  
- Checked for **duplicate IDs** and removed them  
- Fixed **incorrect spellings** (e.g., "Georia" → "Georgia")  
- Standardized **case formatting** (e.g., "alabama" → "Alabama")  
- Replaced or updated incorrect **city and county names**  
- Corrected categorical values (e.g., `Boroughs` → `Borough`)  
- Ensured column names were consistent  

---

## 📊 Exploratory Data Analysis (EDA)  
Key analysis performed in `EDA.sql`:  
- Top 10 states by land area & water area  
- Joined income data with statistics to validate completeness  
- Average mean and median income by **state**  
- Average income by **city**  
- Income distribution by **region type** (City, Borough, Town, etc.)  
- Detected anomalies (e.g., rows with `Mean = 0`)  

---

## 📈 Key Insights Extracted  
- States with largest land and water areas  
- States and cities with the **highest median household incomes**  
- Regional comparisons of income levels (Cities vs Towns vs Boroughs)  
- Outlier detection in reported incomes  

---

## 🚀 How to Run the Project  
1. Clone this repository:  
[Repo Link : Click to Open](https://github.com/iamdhruvgarg/US-Household-Income-Data-Analysis-SQL-Project-)
