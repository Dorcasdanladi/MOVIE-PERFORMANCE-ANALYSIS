# MOVIE PERFORMANCE ANALYSIS

## Table of content

-	Project Overview
-	Data Source
-	Tools Used
-	Data Preparation and Data Cleaning
-	Data Analysis
-	Visualization in Power BI
-	Findings
-	Limitations
-	Conclusion

### Project Overview

The goal of this project is to explore and analyze movie-related data to uncover trends, insights, and patterns related to the performance, reception, and characteristics of movies over time

### Data source

The primary dataset utilized for this analysis is sourced from the "IMDB" file, comprising comprehensive movies data essential for the movie analytics project

### Tools used

-	SQL for querying, filtering, and organizing the data.
-	Power BI for visualizing insights and creating interactive dashboards

## Data Preparation and Data Cleaning Process in MySQL Workbench

1.	Database Creation: Establish a database named "NETFLIX MOVIES."
2.	Import Data: Import the MOVIES dataset as csv file into the database.
3.	Check Data Types: Review data types of all columns using the "CHARINDEX" command.
4. Standardize Date Formats: Use SQL functions to standardize date formats and convert text to date data types
5. Address Missing Values: Identify and handle missing values.
6.	Update Data Types: Review and modify data types as needed, such as changing text to date or integer using UPDATE and CHARINDEX command
7.	Ensure Data Integrity: Validate data integrity and consistency throughout the process.

## Questions Answered in Data Analysis Process in MySQL Workbench 

1.	Highest Grossing Movies with Low Budgets
2.	Average Revenue by Budget
3.	Popularity of Genres Over Time
4.	Top 10 Highest-Rated Movies
5.	Popular Genres Over Time (With a Minimum Threshold)
6.	Growth of Blockbuster Releases Over Time
7.	Find movies where the director and writer are the same person
8.	List all directors who directed more than 3 movies
9.	List movies with the highest profit margins
10.	Company that produced the highest movies

#### Note: Data cleaning and data analysis SQL files are attached for reference

## Visualization in Power BI

-	After completing data cleaning and analysis in MySQL, the results were exported to CSV files.
-	These CSV files served as the basis for creating a visually appealing dashboard in Power BI.
-	The purpose of this Power BI dashboard was to provide a better understanding of the outcomes derived from the SQL data analysis.
-	It's important to note that the Power BI dashboard created is non-interactive; it was designed solely for visually representing the insights obtained through SQL data analysis

## Findings from the Analysis

- The gross amount of $587 billion emphasizes that this collection of movies has generated substantial worldwide earnings, likely indicating that many of the films in the dataset were blockbusters or highly popular
- With 675 million total votes, it indicates that the movies in the dataset attracted significant audience engagement, reflecting a wide viewership
- Given the combination of high total gross, votes, and substantial revenue, it can be inferred that this dataset contains a significant number of successful, possibly blockbuster movies, this dataset represents a very commercially successful group of films, with a large audience and strong financial performance

## Limitations

- Exclusion of Blank Records: During the data analysis process, a total of 2473 of blanks were recorded in some columns; Budget (2173), Gross (189), Company (17), Runtime (4), Witter (3), Star (1), Votes (3), Released (2), and Rating (77) column. These records were excluded from the analysis

## Conclusion

This analysis reveals that movie success is driven by multiple factors, including budget, genre, key contributors (directors, writers, and stars), and market trends. The following conclusions can be drawn:
- Big budgets often lead to higher gross revenues, particularly in genres like Action and Drama
- The influence of directors and stars is significant in determining a movie’s box office performance and critical reception.




