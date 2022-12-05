<!-- This is to import the page with the DB connection -->
<%@page import="project.ConnectionProvider"%>
<!-- This is for sql -->
<%@page import="java.sql.*" %>

<%
    // Get the data from the form
    String patientRegistrationNumber = request.getParameter("patientRegistrationNumber");
	String patientGender = request.getParameter("patientGender");
	String name = request.getParameter("name");
	String monthOfBirth = request.getParameter("monthOfBirth");
	String dateOfBirth = request.getParameter("dateOfBirth");
	String yearOfBirth = request.getParameter("yearOfBirth");
	String patientHeight = "";
	String patientWeight = "";
	String reasonsForSeeingTheDoctor = request.getParameter("reasonsForSeeingTheDoctor");
	String listAnyDrugAllergies = request.getParameter("listAnyDrugAllergies");
	String anemia = request.getParameter("anemia");
	String asthma = request.getParameter("asthma");
	String arthritis = request.getParameter("arthritis");
	String cancer = request.getParameter("cancer");
	String gout = request.getParameter("gout");
	String diabetes = request.getParameter("diabetes");
	String emotionalDisorder = request.getParameter("emotionalDisorder");
	String epilepsySeizures = request.getParameter("epilepsySeizures");
	String faintingSpells = request.getParameter("faintingSpells");
	String gallstones = request.getParameter("gallstones");
	String heartDisease = request.getParameter("heartDisease");
	String heartAttack = request.getParameter("heartAttack");
	String rheumaticFever = request.getParameter("rheumaticFever");
	String highBloodPressure = request.getParameter("highBloodPressure");
	String digestiveProblems = request.getParameter("digestiveProblems");
	String ulcerativeColitis = request.getParameter("ulcerativeColitis");
	String ulcerDisease = request.getParameter("ulcerDisease");
	String hepatitis = request.getParameter("hepatitis");
	String kidneyDisease = request.getParameter("kidneyDisease");
	String liverDisease = request.getParameter("liverDisease");
	String sleepApnea = request.getParameter("sleepApnea");
	String useACPAPMachine = request.getParameter("useACPAPMachine");
	String thyroidProblems = request.getParameter("thyroidProblems");
	String tuberculosis = request.getParameter("tuberculosis");
	String venerealDisease = request.getParameter("venerealDisease");
	String neurologicalDisorders = request.getParameter("neurologicalDisorders");
	String bleedingDisorders = request.getParameter("bleedingDisorders");
	String lungDisease = request.getParameter("lungDisease");
	String emphysema = request.getParameter("emphysema");
	String otherIllnesses = request.getParameter("otherIllnesses");
	String listAnyOperationsAndDatesOfEach = request.getParameter("listAnyOperationsAndDatesOfEach");
	String listYourCurrentMedications = request.getParameter("listYourCurrentMedications");
	String exercise = request.getParameter("exercise");
	String eatingFollowingADiet = request.getParameter("eatingFollowingADiet");
	String alcoholConsumption = request.getParameter("alcoholConsumption");
	String caffeineConsumption = request.getParameter("caffeineConsumption");
	String doYouSmoke = request.getParameter("doYouSmoke");
	String includeOtherCommentsRegardingYourMedicalHistory = request.getParameter("includeOtherCommentsRegardingYourMedicalHistory");
	
	
	
%>

<%
    // Get the data from the form
    String id = request.getParameter("id");
    String name = request.getParameter("name");
	String monthOfBirth = request.getParameter("monthOfBirth");
	String dateOfBirth = request.getParameter("dateOfBirth");
	String yearOfBirth = request.getParameter("yearOfBirth");
	String gender = request.getParameter("gender");
	String location = request.getParameter("location");
	String addALocation = request.getParameter("addALocation");
	String idNumber = request.getParameter("idNumber");
	String phoneNumber = request.getParameter("phoneNumber");
	String nextOfKinName = request.getParameter("nextOfKinName");
	String nextOfKinPhoneNumber = request.getParameter("nextOfKinPhoneNumber");
	String modeOfPayment = request.getParameter("modeOfPayment");
	String insuranceProvider = request.getParameter("insuranceProvider");
	
	System.out.println(id);
	
	// Try catch to catch any errors
	try
	{
		// Connection to the DB
		Connection connectionToTheDB = ConnectionProvider.getCon();
		
		// Prepared statement to insert
		PreparedStatement thePreparedStatement = connectionToTheDB.prepareStatement("insert into patients values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		// Set the values to the one collected in the variables from the form to the ones in the DB
		thePreparedStatement.setString(1, id);
		thePreparedStatement.setString(2, name);
		thePreparedStatement.setString(3, monthOfBirth);
		thePreparedStatement.setString(4, dateOfBirth);
		thePreparedStatement.setString(5, yearOfBirth);
		thePreparedStatement.setString(6, gender);
		thePreparedStatement.setString(7, location);
		thePreparedStatement.setString(8, addALocation);
		thePreparedStatement.setString(9, idNumber);
		thePreparedStatement.setString(10, phoneNumber);
		thePreparedStatement.setString(11, nextOfKinName);
		thePreparedStatement.setString(12, nextOfKinPhoneNumber);
		thePreparedStatement.setString(13, modeOfPayment);
		thePreparedStatement.setString(14, insuranceProvider);
		
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