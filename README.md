# Quote Generator App

Whenever you need a bit of a boost! :rocket:

## Technologies Used
- Java JDK 12
- Spring 5.1.1
- Maven 3.6.1
- Apache Tomcat 9.0.12
- MySQL 8.0.12
- Eclipse Kepler

## Setup
First, clone the code file from the repo.

Then, make sure to configure a Tomcat server in eclipse, here's a guide just in case: 
https://ibytecode.com/blog/how-to-configure-apache-tomcat-in-eclipse-ide/

Next, we will need to set up a MySQL database since this will be on a localhost:
```
CREATE DATABASE test;
```
```
CREATE TABLE quote (
id int NOT NULL, AUTO_INCREMENT,
author varchar(100) NOT NULL,
message varchar(5000) NOT NULL,
primarykey (id) );
```

Be sure to connect your username and password in /webapp/WEB-INF/spring-servlet.xml:

![where to edit in xml file](https://gyazo.com/a639e664b809fa92b282d4894f797935.png)

Once we have our database and localhost setup, right click on the project -> Run As -> Run on Server

It should be running on http://localhost:8080/myApp/home/

![enjoy!](https://gyazo.com/09285a153696491751c473d14be4db74.png)

### Hope you enjoy! :+1:

