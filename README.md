# 🚲 Cyclistic Bike-Share Case Study (2024)

This project analyzes 12 months of bike-share data from Chicago's Cyclistic program to uncover differences in usage patterns between casual riders and annual members. The objective is to generate insights that support business strategies aimed at converting casual users into loyal annual members.

---

## 🧰 Tools Used
- **R** – Data cleaning and preparation
- **Tableau** – Data visualization and dashboards
- **Google Sheets / Excel** – Quick checks and exports

---

## 📂 Dataset
- **Source**: [Divvy Tripdata – Chicago Open Data Portal](https://divvybikes.com/system-data)
- **Timeframe**: 12 months of 2024

---

## 🧼 Data Cleaning & Preparation
- Combined 12 monthly CSVs into one dataset using R
- Created new columns: `ride_duration`, `day_of_week`, and `month`
- Removed nulls, invalid entries, and unnecessary fields
- Exported clean dataset for analysis and visualization

---

## 📊 Analysis Overview

### 1. Total Rides by User Type
- Members = ~63% of rides
- Casual = ~37% of rides

### 2. Average Ride Duration
- Casual riders = ~25 minutes
- Members = ~13 minutes

### 3. Ride Patterns by Day
- Members ride consistently on weekdays
- Casual riders peak on weekends

### 4. Monthly Trends
- Casual usage peaks in summer months
- Member usage is steady year-round

### 5. Bike Type Preference
- Both user types prefer electric bikes
- Scooter usage is minimal for both

---

## 📈 Tableau Dashboard  
**View Dashboard:** [Click here to explore](https://public.tableau.com/app/profile/heena.rathore/viz/CyclisticBike-ShareDashboard_17514503801140/Dashboard1?publish=yes)

The dashboard highlights key trends across weekdays, months, and bike types, showcasing behavioral differences between rider types.

---

## 🧠 Key Insights
- Casual riders are more active on weekends and summer
- Members show weekday, commute-style usage
- Electric bikes are favored by both groups
- Scooter use is negligible

---

## 💡 Recommendations
- Offer **weekend ride packages** for casual users
- Promote **electric bike subscriptions**
- Launch **weekday commuter promos** for casuals
- Run **seasonal discounts** to encourage annual memberships
- Highlight **membership perks** tied to electric bike access

---

## ✅ Conclusion
This case study demonstrates a complete end-to-end data analysis workflow using R and Tableau. It reflects real-world business problem-solving through data cleaning, exploration, visualization, and strategic recommendations.

---

## 📌 Attribution
- **Data Source**: [Divvy Tripdata – Chicago Open Data Portal](https://divvybikes.com/system-data)
- **Author**: Heena Rathore  
- **Date**: June 2025
