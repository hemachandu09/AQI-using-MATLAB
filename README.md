# 🌍 Air Quality Index (AQI) Monitoring System using MATLAB

## 📌 Project Overview
Air pollution has become a major environmental and public health concern due to rapid industrialization, urbanization, and increased vehicular emissions. Continuous monitoring of air quality is essential to understand pollution levels and to take preventive actions.

This project presents a MATLAB-based Air Quality Index (AQI) Monitoring System that simulates real-time air pollution data, calculates AQI values, categorizes air quality levels, visualizes pollutant variations, and stores data for further analysis. The entire system is implemented using Base MATLAB only, without using Simulink or any additional toolboxes, making it suitable for student internships and academic projects.

---

## 🎯 Objectives
- To simulate real-time air pollution data using MATLAB  
- To calculate AQI values based on multiple pollutants  
- To classify air quality into standard AQI categories  
- To visualize pollutant concentration and AQI trends  
- To store pollution data in CSV format for analysis  
- To design a toolbox-free AQI monitoring system  

---

## 🧪 Pollutants Considered
The project considers three major air pollutants that significantly affect air quality and human health:

- **Carbon Monoxide (CO)** – Produced by incomplete combustion of fuels; affects oxygen supply in blood  
- **Nitrogen Dioxide (NO₂)** – Emitted from vehicles and industries; causes respiratory problems  
- **Particulate Matter (PM2.5)** – Fine particles that penetrate deep into lungs; highly harmful  

---

## ⚙️ System Methodology
The AQI monitoring system follows a step-by-step approach. A time duration of 60 minutes is considered, where each minute represents a pollution data sample. Pollutant values are simulated using sinusoidal functions combined with random noise to mimic real sensor behavior. Negative values are removed to maintain realistic conditions.

Each pollutant concentration is converted into a simplified AQI sub-index. The final AQI value is determined by selecting the maximum sub-index, following standard AQI principles. The AQI is then categorized into different air quality levels. Results are displayed in real time, plotted graphically, and logged into a CSV file.

---

## 🧮 AQI Classification
| AQI Range | Category |
|----------|----------|
| 0 – 50 | Good |
| 51 – 100 | Moderate |
| 101 – 200 | Poor |
| 201 – 300 | Very Poor |
| > 300 | Severe |

---

## 📊 Outputs
- Real-time AQI display in MATLAB command window  
- Graphs for CO, NO₂, PM2.5, and AQI variation  
- CSV data file: `AQI_Data_Log.csv`  

---

## 🖥️ Software Requirements
- MATLAB (Base version)  
- No Simulink required  
- No additional toolboxes required  

---
## 🚀 Applications
- Smart city air quality monitoring  
- Environmental pollution analysis  
- Health advisory and warning systems  
- Academic and student internship projects  

---
## Author
Hemachandu


