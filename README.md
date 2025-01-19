# Datahouse
# KingHouse: King County House Sales Analysis

## Project Overview

The **KingHouse** project is an end-to-end data analysis project focused on understanding house sales in King County, Washington. The project demonstrates the use of SQL for data cleaning and analysis, as well as Tableau for interactive data visualization. The insights gained from this project can assist real estate agencies, investors, and homebuyers in making informed decisions.

### Tableau Public Link

You can interact with the dashboard [here](https://public.tableau.com/app/profile/mina.wahba/viz/KingHouse/KingCountyHouseSales).
![KingHouse Analysis](./Datahouse.png)


---

## Project Goals

- Analyze house sales data to uncover trends and insights.
- Utilize SQL for data cleaning, transformation, and exploratory data analysis (EDA).
- Create an interactive Tableau dashboard to visualize and communicate findings effectively.

---

## Dataset Description

The dataset used in this project contains information on house sales, including details about price, location, size, condition, and additional features such as waterfront views.

### Key Columns in the Dataset:

- **id**: Unique identifier for each property.
- **date**: Date of the sale.
- **price**: Sale price of the property.
- **bedrooms**: Number of bedrooms.
- **bathrooms**: Number of bathrooms.
- **sqft\_living**: Square footage of living space.
- **sqft\_lot**: Square footage of the lot.
- **floors**: Number of floors in the property.
- **waterfront**: Indicates if the property has a waterfront view.
- **view**: Quality of the view.
- **condition**: Overall condition of the house.
- **grade**: Overall grade given to the house based on its design and construction.
- **yr\_built**: Year the house was built.
- **zipcode**: Zip code of the property.
- **lat**: Latitude coordinate of the property.
- **long**: Longitude coordinate of the property.

---

## SQL Queries

### DDL (Data Definition Language)

Below is the SQL code used to create the `HouseData` table:

```sql
-- DDL Script
CREATE TABLE HouseData (
    id BIGINT PRIMARY KEY,
    date DATE,
    price DOUBLE PRECISION,
    bedrooms INTEGER,
    bathrooms DOUBLE PRECISION,
    sqft_living INTEGER,
    sqft_lot INTEGER,
    floors DOUBLE PRECISION,
    waterfront VARCHAR(50),
    view VARCHAR(50),
    condition VARCHAR(50),
    grade INTEGER,
    yr_built INTEGER,
    zipcode INTEGER,
    lat DOUBLE PRECISION,
    long DOUBLE PRECISION
);
```

### DML (Data Manipulation Language)

Below is the SQL code used to insert data into the `HouseData` table:

```sql
-- DML Script
INSERT INTO HouseData (id, date, price, bedrooms, bathrooms, sqft_living, sqft_lot, floors, waterfront, view, condition, grade, yr_built, zipcode, lat, long)
VALUES
-- Add your data rows here.
(...);
```

---

## Tableau Dashboard Highlights

1. **Daily Average House Sale Price**:
   - Displays the trend of average house prices over time.
2. **Distribution of House Pricing**:
   - Visualizes the frequency of house prices in different price ranges.
3. **Map Visualization**:
   - Highlights price variations across King County by zip code.
4. **View vs. Condition Analysis**:
   - Explores how house conditions and views affect pricing.

---

## Key Insights

- **Price Trends**: Average house prices fluctuate daily but show consistent patterns over time.
- **Geographical Insights**: Certain zip codes consistently show higher property prices, indicating premium areas.
- **Impact of Features**:
  - Waterfront properties command significantly higher prices.
  - Better condition and higher grades correlate with increased pricing.

---

## Tools and Technologies

- **SQL**: For data cleaning, transformation, and exploratory analysis.
- **Tableau**: For interactive visualization and dashboard creation.
- **PostgreSQL**: For database management.

---

## How to Run the Project

1. **Database Setup**:
   - Use the provided DDL script to create the `HouseData` table in your database.
   - Use the DML script to insert the dataset into the table.
2. **SQL Queries**:
   - Run SQL queries to extract insights and prepare the data for visualization.
3. **Tableau Dashboard**:
   - Use Tableau to create interactive visualizations using the exported query results.

---

## Future Enhancements

- Incorporate machine learning models to predict house prices.
- Analyze additional datasets, such as economic indicators or demographics, to enrich insights.
- Automate data cleaning and visualization processes.

---

## Author

**Mina Wahba**

- [Tableau Public Profile](https://public.tableau.com/app/profile/mina.wahba)

Feel free to explore the project and provide feedback!

