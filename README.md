# Pewlett-Hackard-Analysis

## Overview of Analysis
The aim of this project and analysis is to work toward future proofing our compnay Pewlett-Hackard. The current employee data indicates that in the near future the company will have a large number of employees who are eligible for retirement. In order to prepare for the wave of retirements that the compnay will experience our team has been asked to prepare a list that contains the number of employees who will be retiring from each department. Pewlett-Hackard is also proposing to create a mentorship program that will allow the retriring employees to mentor newly hired employees. In order to assess the feasability of such a project, another list containing the names of the eligible retiring employees was generated. 

## Results 
- The large majority of retiring employees are in the Senior Staff and Senior Engineer roles
- Only 2 managers will be eligible for retirement

![Retirement Titles Snip](https://user-images.githubusercontent.com/96552268/155224851-c9fec64a-003d-4fed-8913-84afb6668712.png)

## Summary 
- Based on a final query of our data we were able to retrieve a total count on how many retirement eligible employees were in each department. From this query it does not appear that there are enough retirement eligible employees in each department to sufficiently mentor the large number of positions that will become available. 

![mentor_count snip](https://user-images.githubusercontent.com/96552268/155230837-20f8ecbe-005d-4dc5-b1fa-d9f950044701.png)

Running the following query allowed us to get a total count of retiring employees at 72,458
- SELECT COUNT (emp_no)
- FROM unique_titles;

