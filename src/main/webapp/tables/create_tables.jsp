<!-- This is to import the DB connection -->
<%@page import="project.ConnectionProvider"%>
<!-- This is for sql -->
<%@page import="java.sql.*" %>

<%
try
{
    Connection theDBConnection=ConnectionProvider.getCon();
    Statement theStatement=theDBConnection.createStatement();
    
    // The query for create table users
    String queryOne="create table users(name varchar(100), email varchar(100) primary key, mobileNumber bigint, securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
    String queryTwo = "create table patients(name varchar(100), monthOfBirth int, dateOfBirth int, yearOfBirth int, location varchar(100), addALocation varchar(100), idNumber bigint primary key, phoneNumber bigint, nextOfKinName varchar(100), nextOfKinPhoneNumber bigint, modeOfPayment varchar(100), insuranceProvider varchar(100))";
    		
    // Prints the query
    System.out.print(queryOne);
    
    // Execute the query
    //st.execute(queryOne);
    theStatement.execute(queryTwo);
    
    
    // Print out that the table has been created
    System.out.print("Table created");
    
    // Close the connection
    theDBConnection.close();
    
    
}
catch(Exception e)
{
    System.out.print(e);	
}
%>