# Mastering-Relational-Databases-Advanced-Design-and-Querying-with-LandmarksDB-
This project focuses on forward and reverse engineering using MySQL Workbench for the LandmarksDB dataset, preparing a database for cloud migration while ensuring integrity and optimization. Advanced SQL queries provide insights on visitor trends and landmarks.

### Attatchments:
#### >ER Diagram (MWB + PNG) - [Part 1 - Question 1]
#### >SQL Export Script - [Part 1 - Question 2]
#### >Query Results (SQL script + screenshots in PDF) - [Part 2]

## Contextualizing the Assignment:
In this scenario, the task revolves around the department’s need to securely migrate its databases to a cloud platform while maintaining local copies of the data. My role as a database administrator involved ensuring referential integrity and maintaining accurate local databases in sync with a centralized database. This required reverse engineering to extract the latest logical model from an outdated database, understanding the current structure, and making necessary adjustments before migration.

I used the MySQL Workbench tool for reverse engineering, which allowed me to analyze the current logical model of LandmarksDB through its entity-relationship (ER) diagram. The diagram illustrated entities such as countries, landmarks, visitor_groups, and their interrelated attributes. The project required identifying primary and foreign keys and retaining entity integrity by reconstructing these relationships. I generated a comprehensive MWB file to document this database schema and captured its cardinality ratios for ongoing maintenance.

Additionally, forward engineering helped me synchronize any updates to the ER model with the database source. This included ensuring that referential integrity constraints, cardinality ratios, and keys were correctly applied in the design process.

## Advanced Queries and Data Extraction:
As part of my analysis, I executed several advanced SQL queries aimed at deriving insights and patterns from the data. I extracted country-specific landmark details, analyzed visitor trends, and identified countries with unique landmark characteristics based on heritage status and descriptions. Key queries included:

-Listing landmarks in France and the USA: Displays all landmarks in these countries with their locations and country details.

-Counting landmarks by country: Shows the total number of landmarks in each country for a global comparison.

-Landmarks established after 1900 with heritage status: Highlights significant landmarks created post-1900 with heritage recognition.

-Visitor numbers and landmark distribution by country and continent: Lists countries, continents, total landmarks, and visitors, sorted by total visitors in descending order.

-Unique landmark pairs in the same location: Finds landmarks in the same city/country without redundant pairs.

-Most popular season for visits by continent: Identifies the season with the highest visitor count for each continent.

-Visits to landmarks with "citadel," "fort," or "castle" in description: Calculates the percentage of visits to these landmarks per country, including those with no visit data.

## Handling Migration and Synchronization:
Given the department’s plan to migrate to a cloud platform, I also prepared the database for a smooth transition by generating a complete export of the database, including both structure and data. This involved ensuring that cardinality, data integrity, and accurate entity modeling were maintained during migration to a cloud-based system. By addressing the logical modeling and data management challenges, I ensured that the databases were prepared for cloud-based environments while maintaining a synchronized local copy for ongoing use.

Through this project, I gained a comprehensive understanding of forward and reverse engineering techniques, advanced SQL query formulation, and database management challenges in the context of cloud migration. These skills not only enhanced my ability to manage complex database environments but also prepared me for handling more sophisticated cloud-based data operations.
