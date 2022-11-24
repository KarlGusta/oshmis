<!-- This is to import the page with the DB connection -->
<%@page import="project.ConnectionProvider"%>

<!-- This is for sql -->
<%@page import="java.sql.*" %>

<%
    // Get the data from the form
    String name = request.getParameter("name");
	String monthOfBirth = request.getParameter("monthOfBirth");
	String dateOfBirth = request.getParameter("dateOfBirth");
	String yearOfBirth = request.getParameter("yearOfBirth");
	String location = request.getParameter("location");
	String addALocation = request.getParameter("addALocation");
	String idNumber = request.getParameter("idNumber");
	String phoneNumber = request.getParameter("phoneNumber");
	String nextOfKinName = request.getParameter("nextOfKinName");
	String nextOfKinPhoneNumber = request.getParameter("nextOfKinPhoneNumber");
	String modeOfPayment = request.getParameter("modeOfPayment");
	String insuranceProvider = request.getParameter("insuranceProvider");
	
	// Try catch to catch any errors
	try
	{
		// Connection to the DB
		Connection connectionToTheDB = ConnectionProvider.getCon();
		
		// Prepared statement to insert
		PreparedStatement thePreparedStatement = connectionToTheDB.prepareStatement("insert into patients values(?,?,?,?,?,?,?,?,?,?,?,?)");
		
		// Set the values to the one collected in the variables from the form to the ones in the DB
		thePreparedStatement.setString(1, name);
		thePreparedStatement.setString(2, monthOfBirth);
		thePreparedStatement.setString(3, dateOfBirth);
		thePreparedStatement.setString(4, yearOfBirth);
		thePreparedStatement.setString(5, location);
		thePreparedStatement.setString(6, addALocation);
		thePreparedStatement.setString(7, idNumber);
		thePreparedStatement.setString(8, phoneNumber);
		thePreparedStatement.setString(9, nextOfKinName);
		thePreparedStatement.setString(10, nextOfKinPhoneNumber);
		thePreparedStatement.setString(11, modeOfPayment);
		thePreparedStatement.setString(12, insuranceProvider);
		
		// This will execute ad update the data
		thePreparedStatement.executeUpdate();
		
		// Send the response to our page. Msg is the variable we are passing the data
		response.sendRedirect("add-a-patient.jsp?msg=valid");
	}
	catch(Exception e)
	{
		// Print the error
		System.out.println(e);
		
		// Send a response to our page of invalid if it did not succeed.
		response.sendRedirect("add-a-patient.jsp?msg=invalid");
	}
	
%>