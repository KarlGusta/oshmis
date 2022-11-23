<!-- This is to import the DB connection -->
<%@page import="project.ConnectionProvider"%>

<!-- This is for sql -->
<%@page import="java.sql.*" %>

<%
try
{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    
    // The query for create table users
    String q1="create table users(name varchar(100), email varchar(100) primary key, mobileNumber bigint, securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
    
    // Prints the query
    System.out.print(q1);
    
    // Execute the query
    st.execute(q1);
    
    // Print out that the table has been created
    System.out.print("Table created");
    
    // Close the connection
    con.close();
    
    
}
catch(Exception e)
{
    System.out.print(e);	
}
%>