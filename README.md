# 🏋🏽‍♀️ TheCave
A project showcasing a practical application of database design &amp; implementation along with some UX/UI design.

## Overview
The main goal of this project is to design and implement a database according to the wireframes shown in Figure 1.1. This will reflect the efficiency and representation of the communication of data in our information system. The following segments of this document will display the conceptual, logical models, and data structures, respectively. Once the diagrams have been iterated and revised, it will be implemented to our database management system. This is summarized in the diagram below:
![](figure1-1.jpg)
### Figure 1.1 - Database Problem Solving Steps

| Page  | Notes |
| ------------- | ------------- |
| Locations | • #OfTimesVisitedThisMonth can be classified in a separate entity<br>• Home Location and Other Visited Location are each seen as a subtype to the Location Type – a location branch can either be your home location or other (cannot be both)  |
| Location Details  | • Address is assumed to be a single valued attribute<br>• Email attribute must be renamed into BranchEmail to avoid redundancy from Email attribute from Reference entity <br>• Each location branch represents a unique entity  |
| Coaches | •	Each coach represents a unique entity <br>•	My Coaches and Other Coaches are each seen as a subtype to Coach type – a coach can either be your coach or other (cannot be both) <br>• Coach Ratings and Reviews can be shown in another separate  entity to avoid redundancy  |
| Coach Details | • References can be represented as a separate entity since it is a multivalued, composite attribute |
| Reviews | • Each review represents a unique entity<br>• Comment textboxes are each seen as a single valued attribute |
| Classes | • Since there is a many-to-many relationship between location and coach as well as session, this can be transformed into a ternary degree, associative relationship (class)|
### Table 1 -  Notes and Assumptions made for Designing Conceptual Model

![](figure2.png)
### Figure 2 -  EER Diagram Derived from Wireframes

![](figure3.png)
### Figure 3 -  Relational Schema in 3rd Normal Form
Figure 3 displays the 3rd Normal form for each relational schema derived from Figure 2. Because we have eliminated multivalued attributes, made surrogate key (ie. ClassID), and designed a well-refined EER Diagram, all the tables that shown in Figure 3 have little to no normalization methods applied.

## Room for improvement
* Database can be applied to a backend framework (ie. Node, Spring Boot) and a frontend (ie. Angular, React)

## Technologies
* [MySQL](https://dev.mysql.com/doc/)
* [Figma](https://www.figma.com/)
