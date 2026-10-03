# Letter of Engagement

**To:** The Women's Aid Group
**From:** 3500 System Consultants
**Date:** February 12, 2023

> This is the requirements document I wrote at the start of the project, reproduced from the original. The client and consultancy are fictional, created for the class. Two names changed during the build: "Resource" became **Partner** and "ClientResource" became **ClientPartner**, to make clear that resources are outside partner organizations. The final database was built in Oracle SQL Developer.

This letter of engagement between 3500 System Consultants and the Women's Aid Group outlines the deliverables for a transactional database to be used by the Women's Aid Group in the course of their day-to-day business operations. This letter will describe the opportunity and requirements, the proposed solution, and a schedule of delivery milestones. Signatures from 3500 System Consultants and the Women's Aid Group are required for the acceptance of this engagement.

## The Business

Women's Aid Group, a non-profit organization that connects women in physical and/or mentally abusive relations to online and local resources to help them escape their unhealthy situations, has hired 3500 System Consultants to create a database to help organize work systems and increase efficiency for its clients and employees.

The requested database will help keep track of the different clients, the resources available, and which clients are using which resources. It will track the region each client is in and the managers of each region. The design of the database is detailed in the following sections.

## Database Description

We, 3500 System Consultants, propose to create a database information system to assist the Women's Aid Group. Our proposed database will contain the following six main entities:

- Client
- ClientResource
- Resource
- ResourceType
- Region
- Manager

These entities revolve around several key assumptions as noted in the below business rules.

**Business Rules:**

- A client can utilize one or many resources and a resource can have zero to many clients.
- A resource has one resource type, but a resource type has one or many resources.
- A client has one region, and a region has zero to many clients.
- A region has one manager, and a manager can only manage one region.

Attachment A provides the conceptual design (ERD Diagram).

## Queries

3500 System Consultants will create multiple queries as SQL Server Stored Procedures in order for the Women's Aid to retrieve just in time transactional data. The following is a list of recommended queries for the Women's Aid Group database:

- **CLIENT by REGION Query:** This query tells the user which clients belong to which region. This will help the Women's Aid Group to keep track of their manager to client ratios.
- **CLIENT by RESOURCE Query:** This query tells the user which clients are utilizing which resources. By using this query, Women's Aid Group will be able to track which resources have been used by the most clients over time.
- **CLIENT by RESOURCE TYPE Query:** This query tells the user which clients are using which resource types. This will allow Women's Aid Group to see which resource types are most popular.
- **MANAGER by REGION Query:** This query tells the user which manager is assigned to each region. This will help Women's Aid Group provide clients with their manager's contact information.
- **CLIENT by RESOURCE TYPE and REGION Query:** This query tells the user which clients are using which resource types in which region. This will allow Women's Aid Group to track which resources are in the most demand in specific regions.
- **INSERT CLIENT Query:** This query allows a user to add a client to the database.

## Reports

Women's Aid Group will use reports from the database that will allow them to better meet the current and future needs of their clients. These reports will be programmed as Stored Procedures (Queries) and presented visually to aid in the quick comprehension of this data. 3500 System Consultants recommends the following primary reports:

- **Active Resources Report:** This report tells the user the number of clients currently using each resource. It will allow Women's Aid Group to view the most and least popular resources and help them to ensure that specific resources are not overloaded.
- **Regional Resource Demand:** This report tells the user the active demand for each type of resource in each region. Analysis of this report will help Women's Aid Group to allocate resources where they are most needed.
- **Regional Client Report:** This report tells the user how many clients are assigned to each region. This will allow the user to manage the client to manager ratio and create new regions if needed.
- **Availability Report:** This report tells Women's Aid Group how many clients are currently active. This will allow the user to figure out how many more clients they are able to take on.
- **Resources Report:** This report tells the user the number of resources available for each resource type. This will allow the user to know the areas where the Women's Aid Group need to find more resources.

## Schedule of Deliverables

| Deliverable | Due date |
|---|---|
| Letter of Engagement | February 12 |
| Data Structure and Data | February 26 |
| Queries / Stored Procedures | April 2 |
| Operating Database with Reports | May 8 |
| System Documentation | May 8 |
| Complete System Design, Documentation, and Presentation | May 8 |
