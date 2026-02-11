# 🌍 Global COVID-19 Analytics Dashboard | MySQL + Tableau
## 📌 Project Overview
The Global COVID-19 Analytics Dashboard is an end-to-end data analytics project designed to evaluate pandemic severity, healthcare capacity, and regional performance using interactive 
Tableau dashboards powered by a MySQL database. This project transforms raw COVID-19 data into actionable insights that support strategic decision-making for health organizations, 
policymakers, and analysts.

## 🎯 Business Problem
During a global health crisis, decision-makers require clear, interactive visualizations to:

- Monitor outbreak severity  
- Allocate healthcare resources effectively  
- Identify high-risk countries  
- Evaluate regional recovery performance  
- Understand the relationship between testing and mortality  

This project addresses these needs through a structured analytics workflow.

## 🧠 Project Objectives
- Analyze global COVID-19 severity
- Compare continent-level outcomes
- Evaluate healthcare capacity using testing vs death rates
- Identify high-risk countries using a calculated risk score
- Assess WHO regional performance
- Build executive-ready dashboards for rapid decision-making

## 🛠 Tech Stack
**Database:** MySQL  
**Visualization Tool:** Tableau  
**Data Processing:** SQL + Calculated Fields   
**Dataset Type:** Country-level COVID statistics  

## 🔄 End-to-End Workflow

### ✔ Data Storage (MySQL)
- Imported cleaned COVID dataset into MySQL
- Structured tables for efficient querying
- Enabled scalable data handling for analytics

### ✔ Data Extraction
- Connected Tableau directly to MySQL
- Optimized queries for faster dashboard performance

### ✔ Data Transformation
Created analytical metrics, including:
- Cases per Million  
- Deaths per Million  
- Tests per Million  
- Death Rate (%)  
- Recovery Rate (%)  
- Risk Score (Fatality weighted by case volume)

### ✔ Data Visualization
Designed interactive dashboards following data visualization best practices:
- Clear visual hierarchy  
- Executive-friendly layouts  
- Minimal cognitive load  
- Insight-driven design

# 📊 Dashboards
## 🧭 Executive Overview Dashboard
Provides a high-level snapshot of global pandemic severity.

### Key Features:

✅ KPI tiles (Confirmed, Deaths, Death Rate, Tests)  

✅ Geographic heat map  

✅ Top affected countries  

✅ Interactive filtering  

📷 **Dashboard Preview:**  
<img width="1173" height="577" alt="executive_dashboard" src="https://github.com/user-attachments/assets/0a4457ba-9640-4af9-a5db-1ef5565c80da" />

## 🌎 Continent Comparison Dashboard
Compares pandemic outcomes across continents to highlight regional disparities.

### Highlights:
- Stacked bar for case distribution  
- Bubble chart for testing vs confirmed cases  
- Death-rate highlight table  

📷 **Dashboard Preview:** 
<img width="1175" height="576" alt="continent_comparison" src="https://github.com/user-attachments/assets/c1ff5729-854c-4f42-b8dd-2818a8d4e57e" />

## 🏥 Healthcare Capacity Analysis
A correlation-focused dashboard exploring the relationship between testing levels and fatality rates.

### Why It Matters:
Reveals how proactive testing may help reduce mortality.

### Features:
- Scatter plot with trend line  
- Bubble sizing by confirmed cases  
- Interactive risk exploration  
- Top high-risk countries chart  

📷 **Dashboard Preview:**  
<img width="1174" height="571" alt="healthcare_capacity" src="https://github.com/user-attachments/assets/a9dc0f1d-1d22-4ac1-91d7-b71e52d99c31" />

## 🌐 WHO Region Performance Dashboard
Evaluates operational regions to support strategic healthcare planning.

### Visual Components:
- Treemap showing share of global cases  
- Recovery rate comparison  
- Regional death burden  

📷 **Dashboard Preview:**  
<img width="1170" height="571" alt="who_summary" src="https://github.com/user-attachments/assets/be9d8a3c-463f-4a55-8c94-2c0d1e518d97" />

# 🔥 Key Insights
- Higher testing volumes are often aligned with lower death rates.
- Some countries exhibited elevated fatality despite smaller outbreaks.
- Major WHO regions carried disproportionate shares of global cases.
- Recovery rates varied significantly across regions.
- Risk modeling helped prioritize countries needing urgent attention.

# 📈 What This Project Demonstrates
- End-to-end analytics capability  
- SQL database integration  
- Dashboard design expertise  
- Data storytelling  
- Healthcare data interpretation  
- Decision-support visualization  


# 👨‍💻 Author
**SOUNDHARYA SUNDARAM IYER**

⭐ If you like this project, consider giving it a star!

LinkedIn: *https://www.linkedin.com/in/soundharyaiyer09*  
Portfolio: *https://github.com/Soundharya09/Global-Covid-19-Analytics-Dashboard*
