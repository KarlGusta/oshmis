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
	String patientHeight = request.getParameter("patientHeight");
	String patientWeight = request.getParameter("patientWeight");
	String reasonForSeeingTheDoctor = request.getParameter("reasonForSeeingTheDoctor");
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
	
	System.out.println(patientRegistrationNumber);
	
	try
	{
		// Connection to the DB
		Connection connectionToTheDB = ConnectionProvider.getCon();
		
		// Prepared statement to insert
		PreparedStatement thePreparedStatement = connectionToTheDB.prepareStatement("insert into generalPatientInformation values(?,?,?,?,?,?,?,?,?)");
		
		// Set the values to the one collected in the variables from the form to the ones in the DB
		thePreparedStatement.setString(1, patientRegistrationNumber);
		thePreparedStatement.setString(2, patientGender);
		thePreparedStatement.setString(3, name);
		thePreparedStatement.setString(4, monthOfBirth);
		thePreparedStatement.setString(5, dateOfBirth);
		thePreparedStatement.setString(6, yearOfBirth);
		thePreparedStatement.setString(7, patientHeight);
		thePreparedStatement.setString(8, patientWeight);
		thePreparedStatement.setString(9, reasonForSeeingTheDoctor);
		
		// This will execute and update the records
		thePreparedStatement.executeUpdate();
		
		// Prepared statement to insert two
		PreparedStatement thePreparedStatementTwo = connectionToTheDB.prepareStatement("insert into patientMedicalHistory values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		// Set the values to the one collected in the variables from the form to the ones in the DB
		thePreparedStatementTwo.setString(1,patientRegistrationNumber);
		thePreparedStatementTwo.setString(2, listAnyDrugAllergies);
		thePreparedStatementTwo.setString(3, anemia);
		thePreparedStatementTwo.setString(4, asthma);
		thePreparedStatementTwo.setString(5, arthritis);
		thePreparedStatementTwo.setString(6, cancer);
		thePreparedStatementTwo.setString(7, gout);
		thePreparedStatementTwo.setString(8, diabetes);
		thePreparedStatementTwo.setString(9, emotionalDisorder);
		thePreparedStatementTwo.setString(10, epilepsySeizures);
		thePreparedStatementTwo.setString(11, faintingSpells);
		thePreparedStatementTwo.setString(12, gallstones);
		thePreparedStatementTwo.setString(13, heartDisease);
		thePreparedStatementTwo.setString(14, heartAttack);
		thePreparedStatementTwo.setString(15, rheumaticFever);
		thePreparedStatementTwo.setString(16, highBloodPressure);
		thePreparedStatementTwo.setString(17, digestiveProblems);
		thePreparedStatementTwo.setString(18, ulcerativeColitis);
		thePreparedStatementTwo.setString(19, ulcerDisease);
		thePreparedStatementTwo.setString(20, hepatitis);
		thePreparedStatementTwo.setString(21, kidneyDisease);
		thePreparedStatementTwo.setString(22, liverDisease);
		thePreparedStatementTwo.setString(23, sleepApnea);
		thePreparedStatementTwo.setString(24, useACPAPMachine);
		thePreparedStatementTwo.setString(25, thyroidProblems);
		thePreparedStatementTwo.setString(26, tuberculosis);
		thePreparedStatementTwo.setString(27, venerealDisease);
		thePreparedStatementTwo.setString(28, neurologicalDisorders);
		thePreparedStatementTwo.setString(29, bleedingDisorders);
		thePreparedStatementTwo.setString(30, lungDisease);
		thePreparedStatementTwo.setString(31, emphysema);
		thePreparedStatementTwo.setString(32, otherIllnesses);
		thePreparedStatementTwo.setString(33, listAnyOperationsAndDatesOfEach);
		thePreparedStatementTwo.setString(34, listYourCurrentMedications);
		
		// This will execute and update the records
		thePreparedStatementTwo.executeUpdate();
		
		
		// Prepared statement to insert Three
		PreparedStatement thePreparedStatementThree = connectionToTheDB.prepareStatement("insert into healthyAndUnhealthyHabits values(?,?,?,?,?,?,?)");
		
		// Set the values to the one collected in the variables from the form to the ones in the DB
		thePreparedStatementThree.setString(1, patientRegistrationNumber);
		thePreparedStatementThree.setString(2, exercise);
		thePreparedStatementThree.setString(3, eatingFollowingADiet);
		thePreparedStatementThree.setString(4, alcoholConsumption);
		thePreparedStatementThree.setString(5, caffeineConsumption);
		thePreparedStatementThree.setString(6, doYouSmoke);
		thePreparedStatementThree.setString(7, includeOtherCommentsRegardingYourMedicalHistory);
		
		// This will execute and update the records
		thePreparedStatementThree.executeUpdate();
		
		// Send the response to our page. Msg is the variable we are passing the data
		response.sendRedirect("all-patients-view-patients.jsp?msg=valid");
	}
	catch(Exception e)
	{
		// Print the error
		System.out.println(e);
		
		// Send a response to our page of invalid if it did not succeed.
		response.sendRedirect("all-patients-view-patients.jsp?msg=invalid");
	}
	
%>