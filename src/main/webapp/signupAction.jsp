<!-- This is to import the page with the DB connection -->
<%@page import="project.ConnectionProvider"%>
<!-- This is for sql -->
<%@page import="java.sql.*" %>

<%

    // Get the data from the form
    String name=request.getParameter("name");
	String email=request.getParameter("email");
	String mobileNumber=request.getParameter("mobileNumber");
	String securityQuestion=request.getParameter("securityQuestion");
	String answer=request.getParameter("answer");
	String password=request.getParameter("password");
	// Since we are not collecting this right now, they will go to the DB as null. The DB has the columns for it.
	String address="";
	String city="";
	String state="";
	String country="";
	
	
	// Try catch to catch any errors
	try
	{
	    // Connection to the DB
		Connection con=ConnectionProvider.getCon();
	    
	    // Prepared statement to insert
	    PreparedStatement ps = con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
	    
	    // Set the values to the one collected in the variables from the form to the ones in the DB
	    ps.setString(1, name);
	    ps.setString(2, email);
	    ps.setString(3, mobileNumber);
	    ps.setString(4, securityQuestion);
	    ps.setString(5, answer);
	    ps.setString(6, password);
	    ps.setString(7, address);
	    ps.setString(8, city);
	    ps.setString(9, state);
	    ps.setString(10, country);
	    
	    // This will execute and update the data
	    ps.executeUpdate();
	    
	    // Send the response to our page. Msg is the variable we are passing the data
	    response.sendRedirect("signup.jsp?msg=valid");
	}
	catch(Exception e)
	{
		// Print the error
		System.out.println(e);
		
		// Send a response to our page of invalid if it did not succeed.
		response.sendRedirect("signup.jsp?msg=invalid");
	}
	
%>