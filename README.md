# 📊 Remote Work & Mental Health Analysis (End-to-End Data Project)

---

## 📌 Project Overview
This project analyzes the impact of remote work on employee mental health and productivity using a dataset of 5,000 global employees.

The project follows a complete end-to-end data workflow, including:
- Designing a relational database in MySQL
- Performing data cleaning and transformation
- Building an interactive dashboard in Power BI

The objective is to generate actionable insights to support HR decision-making.

---

## 🛠️ Tools & Technologies
- **MySQL**  
  - Database Design (Schema, Normalization - 3NF)  
  - Data Cleaning & Transformation  
  - Feature Engineering  
  - SQL Views  

- **Power BI**  
  - Data Modeling  
  - DAX Measures  
  - Interactive Dashboard  

- **Dataset**  
  - 5,000 employee records  
  - Includes work type, mental health indicators, productivity metrics  

---

## 📂 Project Structure
/Data → Raw dataset (.csv)
/SQL_Scripts → SQL queries (cleaning, transformation, analysis)
/Report → Dashboard screenshots & Power BI file (.pbix)

---

## 🚀 Project Workflow

### 1️⃣ Data Processing with MySQL

Instead of using a flat table, the dataset was normalized into **Third Normal Form (3NF)** to improve performance and data integrity.

#### 🔹 Database Design
- Split the original dataset into 4 tables:
  - `Employees`
  - `Jobs`
  - `Work_Habits`
  - `Mental_Health`
- Defined **Primary Keys** and **Foreign Keys** to establish relationships

#### 🔹 Data Cleaning
- Handled missing values (NULL)
- Standardized inconsistent formats
- Converted data types (e.g., Age, Meetings from TEXT → INT)

#### 🔹 Feature Engineering
Created new analytical features using `CASE WHEN`:
- `Age_Group`
- `Experience_Level`
- `Work_Intensity`

#### 🔹 Data Modeling
- Built a consolidated **SQL View (`Final_View`)**  
- This view serves as a clean and optimized data source for Power BI

---

### 2️⃣ Data Visualization with Power BI

Developed an interactive dashboard to answer key business questions:

#### 🔹 Mental Health Analysis
- Compare stress levels across work types:
  - Remote
  - Onsite
  - Hybrid

#### 🔹 Work-Life Balance
- Analyze the relationship between:
  - Number of virtual meetings
  - Work-life balance score

#### 🔹 Productivity Insights
- Evaluate productivity trends across different job roles and industries

---

## 📊 Key Insights
- **Meeting Intensity:**  
  Employees with more than 10 virtual meetings per week have a **20% lower work-life balance score**

- **Stress Levels:**  
  - Hybrid work provides the best balance  
  - Fully remote employees show the highest burnout rate  

- **Company Support:**  
  Employees with access to mental health resources report significantly higher job satisfaction  

---

## 💡 Recommendations
- Limit virtual meetings to **under 8 sessions per week** to prevent overload  
- Provide stronger mental health support for fully remote employees  
- Encourage **hybrid work models** to balance flexibility and social interaction  

---

## 📊 Dashboard Features
- KPI Cards (Total Employees, Avg Stress, Work-Life Balance)
- Interactive Filters (Work Type, Age, Job Role)
- Visualizations:
  - Stress distribution by work type
  - Meetings vs Work-Life Balance
  - Productivity by role

---

## 📸 Dashboard Preview
*(Add your Power BI dashboard screenshot here)*

---

## 🚀 How to Reproduce
1. Import dataset into MySQL  
2. Run SQL scripts for schema creation and data transformation  
3. Connect Power BI to MySQL  
4. Build dashboard based on the data model  

---

## 📬 Contact
Feel free to connect or reach out for discussion!