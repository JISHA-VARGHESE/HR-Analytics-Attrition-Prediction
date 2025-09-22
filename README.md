# HR-Analytics-Attrition-Prediction

**Presented by:** JISHA VARGHESE (Data Science Enthusiast)  
**Internship Topic:** Employee Attrition Prediction Using Logistic Regression

---

# Overview

This project focuses on analyzing HR data to predict employee attrition.  
By understanding patterns and trends in employee data, organizations can proactively manage workforce retention and reduce turnover costs.

---

# Problem Statement

Employee attrition is a major challenge for organizations.  
Predicting which employees are likely to leave helps HR take timely action to retain talent.  

**Target Variable:**  
Attrition (Yes = 1, No = 0)

---

# Objective

- Perform data cleaning and exploratory data analysis (EDA)  
- Preprocess data for machine learning  
- Train a Logistic Regression model to predict employee attrition  
- Save the predictions and the trained model for future use

---

# Data Description

- **Dataset:** Employee data containing demographic, job, and performance details  
- **Data Size:** Depends on your dataset (e.g., 1000 rows × 20 columns)  

**Features include:**  
Age, Department, Gender, JobRole, MonthlyIncome, YearsAtCompany, BusinessTravel, MaritalStatus, etc.  

**Target:** Attrition (Yes/No)

---

# Steps Performed

**Data Cleaning (SQL & Python)**  
- Removed duplicates  
- Checked and replaced missing values  
- Deleted impossible values  

**Exploratory Data Analysis (EDA)**  
- Visualized attrition counts, distributions by gender, department, income, etc.  
- Basic plots using matplotlib and seaborn  

**Data Preprocessing**  
- Converted categorical variables to numeric  
- Checked for missing values  
- Dropped unnecessary columns  
- Split data into train/test sets  

**Machine Learning**  
- Trained Logistic Regression model  
- Checked model performance  
- Handled warnings and ensured data consistency  

**Save Model & Export Predictions**  
- Predictions generated for all employees and saved in `attrition_predictions.csv`  
- Trained Logistic Regression model saved as `logistic_model_hr.pkl`  

**Display Model Accuracy**  
- Accuracy calculated from predictions: 84.50%

---

# Conclusion

The Logistic Regression model was trained to predict employee attrition.  
Predictions and the trained model are saved for future use.  
Model performance indicates it is suitable for HR decision-making regarding employee retention.

---

# Files in Repository

- `HR_Attrition_Excel_EDA` → Excel Findings (Cleaned Data, Pivot Table Analysis & Dashboard)  
- `Employee_data.csv` → Original dataset  
- `HR_Analytics_SQL.sql` → SQL queries used for cleaning  
- `HR Analytics – Employee Attrition Prediction.ipynb` → Jupyter Notebook with full workflow  
- `attrition_predictions.csv` → Predicted results  
- `logistic_model_hr.pkl` → Trained Logistic Regression model
