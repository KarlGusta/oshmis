<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*" %>

<%

  // Getting the data from the form in edit a patient page.
  String id = request.getParameter("id");
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
 
  // Try catch block
  try
  {
	  Connection theConnectionToTheDB = ConnectionProvider.getCon();
	  Statement theStatement = theConnectionToTheDB.createStatement();
	  
	  // Update the patients table
	  theStatement.executeUpdate("update patients set name='"+name+"', monthOfBirth='"+monthOfBirth+"', dateOfBirth='"+dateOfBirth+"', yearOfBirth='"+yearOfBirth+"', location='"+location+"', addALocation='"+addALocation+"', idNumber='"+idNumber+"', phoneNumber='"+phoneNumber+"', nextOfKinName='"+nextOfKinName+"', nextOfKinPhoneNumber='"+nextOfKinPhoneNumber+"', modeOfPayment='"+modeOfPayment+"', insuranceProvider='"+insuranceProvider+"' where id='"+id+"'");
	  
	  // Redirect with success message
	  response.sendRedirect("all-patients-edit-patients.jsp?msg=done");
  }
  catch(Exception e)
  {
	  System.out.println(e);
	  
	  // Redirect with error message
	  response.sendRedirect("all-patients-edit-patients.jsp?msg=wrong");
  }
%>