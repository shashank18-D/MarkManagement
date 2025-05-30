A comprehensive web application for managing Employees built with JSP, Servlets, and MySQL following MVC architecture principles.
___
📋 Prerequisites                                                
Before running this application, make sure you have the following installed:                                                
Java Development Kit (JDK) 8 or higher                                                
Apache Tomcat 9.0 or higher                                                
MySQL Server 5.7 or XAMP Server                                                
MySQL JDBC Driver (mysql-connector-java)                                                
IDE: Eclipse (J2EE), IntelliJ IDEA, or any Java IDE                                                
Web Browser: Chrome, Firefox, or Edge                                                
___
🗄️ Database Setup                                                
1. Create Database                                                
CREATE DATABASE IF NOT EXISTS studentdb;                                                
USE studentdb;                                                
2. Create Table                                                
CREATE TABLE StudentMarks (                                          
StudentID INT PRIMARY KEY,                                          
StudentName VARCHAR(100),                                          
Subject VARCHAR(50),                                          
Marks INT,                                          
ExamDate DATE                                          
);                                          
___

🖼️ Screenshots                                                      

🏠 Home Page                                         

![Output](https://github.com/shashank18-D/MarkManagement/blob/main/Outputs/Home.png)

➕ Add Emp Page                                                           

![Output](https://github.com/shashank18-D/MarkManagement/blob/main/Outputs/Add.png)


❌ Delete Details                                  
![Output](https://github.com/shashank18-D/MarkManagement/blob/main/Outputs/Delete.png)


🆕 Update Details                           
![Output](https://github.com/shashank18-D/MarkManagement/blob/main/Outputs/Update.png)

📋 Reports                                      
![Output](https://github.com/shashank18-D/MarkManagement/blob/main/Outputs/Reports.png)



MVC Architecture: Clear separation between Model, View, and Controller  

Database Integration: CRUD operations with MySQL                      

Web Development: JSP, Servlets, HTML, CSS, JavaScript                

Input Validation: Both client-side and server-side                                     

Report Generation: Dynamic data analysis and presentation         

Professional UI: Responsive design with Bootstrap              

