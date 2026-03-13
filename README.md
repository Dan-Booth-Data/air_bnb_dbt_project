### Airbnb Analytics Engineering Project
An end-to-end analytics engineering project that ingests public Airbnb listing data into Snowflake, transforms it using dbt, and delivers an interactive Tableau dashboard with search functionalities.

<div align="left">
  <img src="https://img.shields.io/badge/snowflake-28A0E5?style=for-the-badge&logo=snowflake&logoColor=white" />
  <img src="https://img.shields.io/badge/dbt-FF8200?style=for-the-badge&logo=dbt&logoColor=white" />
  <img src="https://img.shields.io/badge/Tableau-0052CC?style=for-the-badge&logo=tableau&logoColor=white" />
</div>

--- 

## Steps

1. **Data Ingestion**
   Airbnb listing and calendar datasets from InsideAirbnb were ingested into Snowflake, creating the raw data layer used for downstream transformations.

2. **Data Transformation with dbt**
   A structured and well-documented data transformation pipeline was built using dbt. The pipeline cleans, standardises, and models the raw data into analytics-ready tables following best practices for modular SQL development and data lineage.

3. **Interactive Data Exploration in Tableau**
   An interactive Tableau dashboard was developed to allow users to explore Airbnb listings through filters and search functionality. The dashboard was further enhanced with London attraction data generated using Gemini to provide additional contextual insights for users exploring listings in the city.

---

## Final Dashboard

<a href = "https://public.tableau.com/app/profile/dan.booth/viz/AirbnbsproximitytoLondonattractions/AirBnbLocations">
<img src="https://public.tableau.com/static/images/Ai/AirbnbsproximitytoLondonattractions/AirBnbLocations/4_3.png" width = "50%" />
</a>

---

## Tools

| Layer           | Technology    |
| --------------- | ------------- |
| Data Source     | Inside Airbnb |
| Data Warehouse  | Snowflake     |
| Transformation  | dbt           |
| Query Language  | SQL           |
| Visualisation   | Tableau       |
| Version Control | Git / GitHub  |
