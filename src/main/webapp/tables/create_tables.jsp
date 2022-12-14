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
    String usersTableQuery="create table users(name varchar(100), email varchar(100) primary key, mobileNumber bigint, securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
    String patientsTableQuery = "create table patients(id int, name varchar(100), monthOfBirth int, dateOfBirth int, yearOfBirth int, gender varchar(100), location varchar(100), addALocation varchar(100), idNumber bigint primary key, phoneNumber bigint, nextOfKinName varchar(100), nextOfKinPhoneNumber bigint, modeOfPayment varchar(100), insuranceProvider varchar(100), status varchar(100))";
    String generalPatientInformationTableQuery = "create table generalPatientInformation(patientRegistrationNumber int, patientGender varchar(255), name varchar(255), monthOfBirth int, dateOfBirth int, yearOfBirth int, patientHeight int, patientWeight int, reasonForSeeingTheDoctor varchar(255))";
    String patientMedicalHistoryTableQuery = "create table patientMedicalHistory(patientRegistrationNumber int, listAnyDrugAllergies varchar(255), anemia varchar(100), asthma varchar(100), arthritis varchar(100), cancer varchar(100), gout varchar(100), diabetes varchar(100), emotionalDisorder varchar(100), epilepsySeizures varchar(100), faintingSpells varchar(100), gallstones varchar(100), heartDisease varchar(100), heartAttack varchar(100), rheumaticFever varchar(100), highBloodPressure varchar(100), digestiveProblems varchar(100), ulcerativeColitis varchar(100), ulcerDisease varchar(100), hepatitis varchar(100), kidneyDisease varchar(100), liverDisease varchar(100), sleepApnea varchar(100), useACPAPMachine varchar(100), thyroidProblems varchar(100), tuberculosis varchar(100), venerealDisease varchar(100), neurologicalDisorders varchar(100), bleedingDisorders varchar(100), lungDisease varchar(100), emphysema varchar(100), otherIllnesses varchar(100), listAnyOperationsAndDatesOfEach varchar(100), listYourCurrentMedications varchar(100))";
    String healthyAndUnhealthyHabitsTableQuery = "create table healthyAndUnhealthyHabits(patientRegistrationNumber int, exercise varchar(255), eatingFollowingADiet varchar(255), alcoholConsumption varchar(255), caffeineConsumption varchar(255), doYouSmoke varchar(255), includeOtherCommentsRegardingYourMedicalHistory varchar(255))";
    String patientViewedTableQuery = "create table patientViewed(patientRegistrationNumber int, completedViewingPatient varchar(255), dateViewed date)";
    String chargesTableQuery = "create table charges(chargeName varchar(100), cashPayment varchar(100), insurancePayment varchar(100))";
    String itemsTableQuery = "create table items(itemId int, itemName varchar(100), itemPrice int)";
    // String patientHistoryTableQuery = "create table patientHistory(id, viewedByDoctor, dateViewed primary key)"
    // String healthyAndUnhealthyHabitsTableQuery = (dateViewed secondary key)
    		
    // Prints the query
    //System.out.print(usersTableQuery);
    //System.out.print(patientsTableQuery);
    
    // Execute the query
    //theStatement.execute(usersTableQuery);
    //theStatement.execute(patientsTableQuery);
    //theStatement.execute(generalPatientInformationTableQuery);
    //theStatement.execute(patientMedicalHistoryTableQuery);
    //theStatement.execute(healthyAndUnhealthyHabitsTableQuery);
    //theStatement.execute(patientViewedTableQuery);
    //theStatement.execute(chargesTableQuery);
    theStatement.execute(itemsTableQuery);
    
    
    // Print out that the table has been created
    //System.out.print("Table created");
    
    // Close the connection
    theDBConnection.close();
    
    
}
catch(Exception e)
{
    System.out.print(e);	
}
%>