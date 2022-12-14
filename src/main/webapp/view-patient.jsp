<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, viewport-fit=cover" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>OSHMIS - View a Patient</title>
<!-- CSS files -->
<link href="./dist/css/tabler.min.css" rel="stylesheet" />
<link href="./dist/css/tabler-flags.min.css" rel="stylesheet" />
<link href="./dist/css/tabler-payments.min.css" rel="stylesheet" />
<link href="./dist/css/tabler-vendors.min.css" rel="stylesheet" />
<link href="./dist/css/demo.min.css" rel="stylesheet" />

<!-- 'Alert after submitting' CSS File -->
<link href="./dist/css/alert-after-submit.css" rel="stylesheet" />
</head>
<body>
	<div class="page">
		<!-- This is the start of the aside Navigation bar -->
		<aside class="navbar navbar-vertical navbar-expand-lg navbar-dark">
        <div class="container-fluid">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
            <span class="navbar-toggler-icon"></span>
          </button>
          
          <!-- This is the logo on the top of the aside bar -->
          <h1 class="navbar-brand navbar-brand-autodark">
            <a href=".">
              <img src="Assets/Images/Achamit_high_resolution_logo_transparent_background.png" width="110" height="32" alt="Tabler" class="navbar-brand-image">
            </a>
          </h1>
          <!-- This is the end of the logo on the top of the aside bar -->
          
          <!-- This is the Navigation Bar -->
          <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="navbar-nav pt-lg-3">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown" data-bs-auto-close="false" role="button" aria-expanded="false" >
                  <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/package -->
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3" /><line x1="12" y1="12" x2="20" y2="7.5" /><line x1="12" y1="12" x2="12" y2="21" /><line x1="12" y1="12" x2="4" y2="7.5" /><line x1="16" y1="5.25" x2="8" y2="9.75" /></svg>
                  </span>
                  <span class="nav-link-title">
                    Reception Records Unit
                  </span>
                </a>
                <div class="dropdown-menu">
                  <div class="dropdown-menu-columns">
                    <div class="dropdown-menu-column">
                      <a class="dropdown-item" href="queue.jsp">Queue a patient</a>
                      <a class="dropdown-item" href="add-a-patient.jsp">Add a new patient</a>
                      <a class="dropdown-item" href="all-patients-edit-patients.jsp">
                        All patients and edit patient
                      </a>
                      <a class="dropdown-item" href="all-patients-view-patients.jsp">
                        All patients and view patient
                      </a>
                    </div>
                  </div>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown" data-bs-auto-close="false" role="button" aria-expanded="false" >
                  <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/package -->
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3" /><line x1="12" y1="12" x2="20" y2="7.5" /><line x1="12" y1="12" x2="12" y2="21" /><line x1="12" y1="12" x2="4" y2="7.5" /><line x1="16" y1="5.25" x2="8" y2="9.75" /></svg>
                  </span>
                  <span class="nav-link-title">
                    Cash Office
                  </span>
                </a>
                <div class="dropdown-menu">
                  <div class="dropdown-menu-columns">
                    <div class="dropdown-menu-column">
                      <a class="dropdown-item" href="select-patient-to-add-item-to.jsp">Add items to pay</a>
                      <a class="dropdown-item" href="collect-cash-payments.jsp">Collect cash payments</a>
                      <a class="dropdown-item" href="collect-insurance-payments.jsp">Collect Insurance payments</a>
                    </div>
                  </div>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown" data-bs-auto-close="false" role="button" aria-expanded="false" >
                  <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/package -->
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3" /><line x1="12" y1="12" x2="20" y2="7.5" /><line x1="12" y1="12" x2="12" y2="21" /><line x1="12" y1="12" x2="4" y2="7.5" /><line x1="16" y1="5.25" x2="8" y2="9.75" /></svg>
                  </span>
                  <span class="nav-link-title">
                    Outpatient Nurse Unit
                  </span>
                </a>
                <div class="dropdown-menu">
                  <div class="dropdown-menu-columns">
                    <div class="dropdown-menu-column">
                      <a class="dropdown-item" href="triage.jsp">Triage a Patient</a>
                    </div>
                  </div>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown" data-bs-auto-close="false" role="button" aria-expanded="false" >
                  <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/package -->
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3" /><line x1="12" y1="12" x2="20" y2="7.5" /><line x1="12" y1="12" x2="12" y2="21" /><line x1="12" y1="12" x2="4" y2="7.5" /><line x1="16" y1="5.25" x2="8" y2="9.75" /></svg>
                  </span>
                  <span class="nav-link-title">
                    Outpatient Doctors Unit
                  </span>
                </a>
                <div class="dropdown-menu">
                  <div class="dropdown-menu-columns">
                    <div class="dropdown-menu-column">
                      <a class="dropdown-item" href="all-patients-view-patients.jsp">All Patients, View Patient</a>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <!-- This is the end of the Navigation Bar -->
        </div>
      </aside>
		<!-- This is the start of the aside Navigation bar -->

		<!-- This is the start of the header(Menu bar) -->
		<header
			class="navbar navbar-expand-md navbar-light d-none d-lg-flex d-print-none">
			<div class="container-xl">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbar-menu">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="navbar-nav flex-row order-md-last">

					<!-- This is the start of the change theme and the notification center -->
					<div class="d-none d-md-flex">
						<!-- These are the change theme icons -->
						<a href="?theme=dark" class="nav-link px-0 hide-theme-dark"
							title="Enable dark mode" data-bs-toggle="tooltip"
							data-bs-placement="bottom"> <!-- Download SVG icon from http://tabler-icons.io/i/moon -->
							<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
								height="24" viewBox="0 0 24 24" stroke-width="2"
								stroke="currentColor" fill="none" stroke-linecap="round"
								stroke-linejoin="round">
								<path stroke="none" d="M0 0h24v24H0z" fill="none" />
								<path
									d="M12 3c.132 0 .263 0 .393 0a7.5 7.5 0 0 0 7.92 12.446a9 9 0 1 1 -8.313 -12.454z" /></svg>
						</a> <a href="?theme=light" class="nav-link px-0 hide-theme-light"
							title="Enable light mode" data-bs-toggle="tooltip"
							data-bs-placement="bottom"> <!-- Download SVG icon from http://tabler-icons.io/i/sun -->
							<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
								height="24" viewBox="0 0 24 24" stroke-width="2"
								stroke="currentColor" fill="none" stroke-linecap="round"
								stroke-linejoin="round">
								<path stroke="none" d="M0 0h24v24H0z" fill="none" />
								<circle cx="12" cy="12" r="4" />
								<path
									d="M3 12h1m8 -9v1m8 8h1m-9 8v1m-6.4 -15.4l.7 .7m12.1 -.7l-.7 .7m0 11.4l.7 .7m-12.1 -.7l-.7 .7" /></svg>
						</a>
						<!-- This is the end of the change theme icons -->

						<!-- This is the start of the notification center -->
						<!-- <p>This is where the notification center should be but I have removed it.</p> -->
						<!-- This is the end of the notification center -->
					</div>
					<!-- This is the end of the change theme and the notification center -->

					<!-- This is the Name, Icon and the Designation on the Menu Bar -->
					<div class="nav-item dropdown">
						<a href="#" class="nav-link d-flex lh-1 text-reset p-0"
							data-bs-toggle="dropdown" aria-label="Open user menu"> <!-- This is the profile photo. I have commented it out -->
							<!--<span class="avatar avatar-sm" style="background-image: url(./static/avatars/000m.jpg)"></span>  -->
							<!-- This is the end of the profile photo. I have commented it out -->
							<div class="d-none d-xl-block ps-2">
								<div>Karl</div>
								<div class="mt-1 small text-muted">UI Designer</div>
							</div>
						</a>
						<div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
							<a href="#" class="dropdown-item">Logout</a>
						</div>
					</div>
					<!-- The end of This is the Name, Icon and the Designation on the Menu Bar -->

				</div>

				<!-- This is the search bar and icon at the menu bar. I have commented it out to maintain the page format. -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<!-- 
              <div>
                <form action="." method="get">
                  <div class="input-icon">
                    <span class="input-icon-addon">
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="10" cy="10" r="7" /><line x1="21" y1="21" x2="15" y2="15" /></svg>
                    </span>
                    <input type="text" value="" class="form-control" placeholder="Search???" aria-label="Search in website">
                  </div>
                </form>
              </div>
              -->
				</div>
				<!-- This is the end of the search icon and icon at the menu bar -->
			</div>
		</header>
		<!-- This is the end of the header -->

		<!-- This is the start of the contents of the page -->
		<div class="page-wrapper">
			<div class="container-xl">
				<!-- Page title -->
				<div class="page-header d-print-none">
					<div class="row g-2 align-items-center">
						<div class="col">
							<h2 class="page-title">View Patient</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="page-body">
				<div class="container-xl">
					<div class="row row-cards">
						<div class="col-md-12">
							<div class="card">
								<ul class="nav nav-tabs" data-bs-toggle="tabs">
									<li class="nav-item"><a href="#tabs-home-7"
										class="nav-link active" data-bs-toggle="tab">Patient
											History</a></li>
									<li class="nav-item"><a href="#tabs-profile-7"
										class="nav-link" data-bs-toggle="tab">Previous patient
											History</a></li>
									<li class="nav-item ms-auto"><a href="#tabs-settings-7"
										class="nav-link" title="Settings" data-bs-toggle="tab"> <!-- Download SVG icon from http://tabler-icons.io/i/settings -->
											<svg xmlns="http://www.w3.org/2000/svg" class="icon"
												width="24" height="24" viewBox="0 0 24 24" stroke-width="2"
												stroke="currentColor" fill="none" stroke-linecap="round"
												stroke-linejoin="round">
												<path stroke="none" d="M0 0h24v24H0z" fill="none" />
												<path
													d="M10.325 4.317c.426 -1.756 2.924 -1.756 3.35 0a1.724 1.724 0 0 0 2.573 1.066c1.543 -.94 3.31 .826 2.37 2.37a1.724 1.724 0 0 0 1.065 2.572c1.756 .426 1.756 2.924 0 3.35a1.724 1.724 0 0 0 -1.066 2.573c.94 1.543 -.826 3.31 -2.37 2.37a1.724 1.724 0 0 0 -2.572 1.065c-.426 1.756 -2.924 1.756 -3.35 0a1.724 1.724 0 0 0 -2.573 -1.066c-1.543 .94 -3.31 -.826 -2.37 -2.37a1.724 1.724 0 0 0 -1.065 -2.572c-1.756 -.426 -1.756 -2.924 0 -3.35a1.724 1.724 0 0 0 1.066 -2.573c-.94 -1.543 .826 -3.31 2.37 -2.37c1 .608 2.296 .07 2.572 -1.065z" />
												<circle cx="12" cy="12" r="3" /></svg>
									</a></li>
								</ul>
								<div class="card-body">
									<div class="tab-content">
										<div class="tab-pane active show" id="tabs-home-7">
											<div class="row row-cards">
												<div class="col-12">
													<div class="card">
														<div class="card-header">
															<h3 class="card-title">General Patient Information</h3>
														</div>
														<div class="card-body">

															<!-- Patient ID -->
															<%
															// Get the id from the URL
															String id = request.getParameter("id");

															try {
																Connection theConnectionToTheDB = ConnectionProvider.getCon();
																Statement theStatement = theConnectionToTheDB.createStatement();

																ResultSet theResultSet = theStatement.executeQuery("select * from patients where id='" + id + "'");
																while (theResultSet.next()) {
															%>
															<!-- End of Patient ID -->

															<form action="view-patient-action.jsp" method="post">
															<div class="mb-3">
																	<label class="form-label">Patient Registration number</label> 
																	<input type="text" class="form-control" placeholder="Patient Registration Number" value="<%=theResultSet.getString(1) %>" disabled>
																	
																	<!-- This hidden input helps persist the data so that it doesn't send NULL -->	
																	<input type="hidden" name="patientRegistrationNumber" value="<%=theResultSet.getString(1) %>">
																</div>
																<div class="form-group mb-3 ">
																	<label class="form-label">Patient Gender *</label>
																	<div>
																		<select class="form-select" disabled>
																			<option value="<%=theResultSet.getString(6) %>"><%=theResultSet.getString(6) %></option>
																			<option value="Male">Male</option>
																			<option value="Female">Female</option>
																		</select>
																		
																	<!-- This hidden input helps persist the data so that it doesn't send NULL -->	
																	<input type="hidden" name="patientGender" value="<%=theResultSet.getString(6) %>">
																	</div>
																</div>
																<div class="mb-3">
																	<label class="form-label">Name</label> 
																	<input type="text" class="form-control" placeholder="Enter name" value="<%=theResultSet.getString(2) %>" disabled>
																		
																	<!-- This hidden input helps persist the data so that it doesn't send NULL -->	
																	<input type="hidden" name="name" value="<%=theResultSet.getString(2) %>">
																</div>
																<div class="mb-3">
																	<label class="form-label">Patient's Date of
																		Birth</label>
																	<div class="row g-2">
																		<div class="col-5">
																			<select class="form-select" disabled>
																				<option value="">Month</option>
																				<option selected="selected" value="<%=theResultSet.getString(3) %>"><%=theResultSet.getString(3) %></option>
																				<option value="1">January</option>
																				<option value="2">February</option>
																				<option value="3">March</option>
																				<option value="4">April</option>
																				<option value="5">May</option>
																				<option value="6">June</option>
																				<option value="7">July</option>
																				<option value="8">August</option>
																				<option value="9">September</option>
																				<option value="10">October</option>
																				<option value="11">November</option>
																				<option value="12">December</option>
																			</select>
																			<!-- This hidden input helps persist the data so that it doesn't send NULL -->	
																	        <input type="hidden" name="monthOfBirth" value="<%=theResultSet.getString(3) %>">
																		</div>
																		<div class="col-3">
																			<select name="dateOfBirth" class="form-select" disabled>
																				<option value="">Day</option>
																				<option value="<%=theResultSet.getString(4) %>"><%=theResultSet.getString(4) %></option>
																				<option value="1">1</option>
																				<option value="2">2</option>
																				<option value="3">3</option>
																				<option value="4">4</option>
																				<option value="5">5</option>
																				<option value="6">6</option>
																				<option value="7">7</option>
																				<option value="8">8</option>
																				<option value="9">9</option>
																				<option value="10">10</option>
																				<option value="11">11</option>
																				<option value="12">12</option>
																				<option value="13">13</option>
																				<option value="14">14</option>
																				<option value="15">15</option>
																				<option value="16">16</option>
																				<option value="17">17</option>
																				<option value="18">18</option>
																				<option value="19">19</option>
																				<option value="20" selected>20</option>
																				<option value="21">21</option>
																				<option value="22">22</option>
																				<option value="23">23</option>
																				<option value="24">24</option>
																				<option value="25">25</option>
																				<option value="26">26</option>
																				<option value="27">27</option>
																				<option value="28">28</option>
																				<option value="29">29</option>
																				<option value="30">30</option>
																				<option value="31">31</option>
																			</select>
																			<!-- This hidden input helps persist the data so that it doesn't send NULL -->	
																	        <input type="hidden" name="dateOfBirth" value="<%=theResultSet.getString(4) %>">
																		</div>
																		<div class="col-4">
																			<select name="yearOfBirth" class="form-select" disabled>
																				<option value="">Year</option>
																				<option value="<%=theResultSet.getString(5) %>"><%=theResultSet.getString(5) %></option>
																				<option value="2014">2014</option>
																				<option value="2013">2013</option>
																				<option value="2012">2012</option>
																				<option value="2011">2011</option>
																				<option value="2010">2010</option>
																				<option value="2009">2009</option>
																				<option value="2008">2008</option>
																				<option value="2007">2007</option>
																				<option value="2006">2006</option>
																				<option value="2005">2005</option>
																				<option value="2004">2004</option>
																				<option value="2003">2003</option>
																				<option value="2002">2002</option>
																				<option value="2001">2001</option>
																				<option value="2000">2000</option>
																				<option value="1999">1999</option>
																				<option value="1998">1998</option>
																				<option value="1997">1997</option>
																				<option value="1996">1996</option>
																				<option value="1995">1995</option>
																				<option value="1994">1994</option>
																				<option value="1993">1993</option>
																				<option value="1992">1992</option>
																				<option value="1991">1991</option>
																				<option value="1990">1990</option>
																				<option value="1989" selected>1989</option>
																				<option value="1988">1988</option>
																				<option value="1987">1987</option>
																				<option value="1986">1986</option>
																				<option value="1985">1985</option>
																				<option value="1984">1984</option>
																				<option value="1983">1983</option>
																				<option value="1982">1982</option>
																				<option value="1981">1981</option>
																				<option value="1980">1980</option>
																				<option value="1979">1979</option>
																				<option value="1978">1978</option>
																				<option value="1977">1977</option>
																				<option value="1976">1976</option>
																				<option value="1975">1975</option>
																				<option value="1974">1974</option>
																				<option value="1973">1973</option>
																				<option value="1972">1972</option>
																				<option value="1971">1971</option>
																				<option value="1970">1970</option>
																				<option value="1969">1969</option>
																				<option value="1968">1968</option>
																				<option value="1967">1967</option>
																				<option value="1966">1966</option>
																				<option value="1965">1965</option>
																				<option value="1964">1964</option>
																				<option value="1963">1963</option>
																				<option value="1962">1962</option>
																				<option value="1961">1961</option>
																				<option value="1960">1960</option>
																				<option value="1959">1959</option>
																				<option value="1958">1958</option>
																				<option value="1957">1957</option>
																				<option value="1956">1956</option>
																				<option value="1955">1955</option>
																				<option value="1954">1954</option>
																				<option value="1953">1953</option>
																				<option value="1952">1952</option>
																				<option value="1951">1951</option>
																				<option value="1950">1950</option>
																				<option value="1949">1949</option>
																				<option value="1948">1948</option>
																				<option value="1947">1947</option>
																				<option value="1946">1946</option>
																				<option value="1945">1945</option>
																				<option value="1944">1944</option>
																				<option value="1943">1943</option>
																				<option value="1942">1942</option>
																				<option value="1941">1941</option>
																				<option value="1940">1940</option>
																				<option value="1939">1939</option>
																				<option value="1938">1938</option>
																				<option value="1937">1937</option>
																				<option value="1936">1936</option>
																				<option value="1935">1935</option>
																				<option value="1934">1934</option>
																				<option value="1933">1933</option>
																				<option value="1932">1932</option>
																				<option value="1931">1931</option>
																				<option value="1930">1930</option>
																				<option value="1929">1929</option>
																				<option value="1928">1928</option>
																				<option value="1927">1927</option>
																				<option value="1926">1926</option>
																				<option value="1925">1925</option>
																				<option value="1924">1924</option>
																				<option value="1923">1923</option>
																				<option value="1922">1922</option>
																				<option value="1921">1921</option>
																				<option value="1920">1920</option>
																				<option value="1919">1919</option>
																				<option value="1918">1918</option>
																				<option value="1917">1917</option>
																				<option value="1916">1916</option>
																				<option value="1915">1915</option>
																				<option value="1914">1914</option>
																				<option value="1913">1913</option>
																				<option value="1912">1912</option>
																				<option value="1911">1911</option>
																				<option value="1910">1910</option>
																				<option value="1909">1909</option>
																				<option value="1908">1908</option>
																				<option value="1907">1907</option>
																				<option value="1906">1906</option>
																				<option value="1905">1905</option>
																				<option value="1904">1904</option>
																				<option value="1903">1903</option>
																				<option value="1902">1902</option>
																				<option value="1901">1901</option>
																				<option value="1900">1900</option>
																				<option value="1899">1899</option>
																				<option value="1898">1898</option>
																				<option value="1897">1897</option>
																			</select>
																			<!-- This hidden input helps persist the data so that it doesn't send NULL -->	
																	        <input type="hidden" name="yearOfBirth" value="<%=theResultSet.getString(5) %>">
																		</div>
																	</div>
																</div>
																<div class="mb-3">
																	<label class="form-label">Patient Height(in
																		cms) *</label> <input type="text" class="form-control"
																		name="patientHeight"
																		placeholder="Enter patient height">
																</div>
																<div class="mb-3">
																	<label class="form-label">Patient Weight(in
																		kgs) *</label> <input type="text" class="form-control"
																		name="patientWeight"
																		placeholder="Enter patient weight">
																</div>
																<div class="mb-3">
																	<label class="form-label">Reasons for seeing
																		the doctor *</label> <input type="text" class="form-control"
																		name="reasonForSeeingTheDoctor"
																		placeholder="Enter the reasons for seeing the doctor">
																</div>
																<br />
																<div class="mb-3">
																	<h2 class="card-title">Patient Medical History</h2>
																</div>
																<div class="dropdown-divider"></div>
																<div class="mb-3">
																	<label class="form-label">Please list any drug
																		allergies </label>
																	<textarea class="form-control"
																		name="listAnyDrugAllergies" rows="6"
																		placeholder="List any drug allergies.."></textarea>
																</div>
																<div class="form-group mb-3">
																	<label class="form-label">Have you ever
																		had(Please check all that apply)</label>
																	<div>
																		<label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="anemia"> <span class="form-check-label">Anemia</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="asthma"> <span class="form-check-label">Asthma</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="arthritis"> <span
																			class="form-check-label">Arthritis</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="cancer"> <span class="form-check-label">Cancer</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox" name="gout">
																			<span class="form-check-label">Gout</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="diabetes"> <span
																			class="form-check-label">Diabetes</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="emotionalDisorder"> <span
																			class="form-check-label">Emotional Disorder</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="epilepsySeizures"> <span
																			class="form-check-label">Epilepsy Seizures</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="faintingSpells"> <span
																			class="form-check-label">Fainting Spells</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="gallstones"> <span
																			class="form-check-label">Gallstones</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="heartDisease"> <span
																			class="form-check-label">Heart Disease</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="heartAttack"> <span
																			class="form-check-label">Heart Attack</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="rheumaticFever"> <span
																			class="form-check-label">Rheumatic fever</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="highBloodPressure"> <span
																			class="form-check-label">High blood Pressure</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="digestiveProblems"> <span
																			class="form-check-label">Digestive Problems</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="ulcerativeColitis"> <span
																			class="form-check-label">Ulcerative Colitis</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="ulcerDisease"> <span
																			class="form-check-label">Ulcer Disease</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="hepatitis"> <span
																			class="form-check-label">Hepatitis</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="kidneyDisease"> <span
																			class="form-check-label">Kidney Disease</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="liverDisease"> <span
																			class="form-check-label">Liver Disease</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="sleepApnea"> <span
																			class="form-check-label">Sleep Apnea</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="useACPAPMachine"> <span
																			class="form-check-label">Use a C-PAP Machine</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="thyroidProblems"> <span
																			class="form-check-label">Thyroid Problems</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="tuberculosis"> <span
																			class="form-check-label">Tuberculosis</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="venerealDisease"> <span
																			class="form-check-label">Venereal Disease</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="neurologicalDisorders"> <span
																			class="form-check-label">Neurological
																				Disorders</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="bleedingDisorders"> <span
																			class="form-check-label">Bleeding Disorders</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="lungDisease"> <span
																			class="form-check-label">Lung Disease</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"
																			name="emphysema"> <span
																			class="form-check-label">Emphysema</span>
																		</label>
																	</div>
																</div>
																<div class="mb-3">
																	<label class="form-label">Other Illnesses</label> <input
																		type="text" class="form-control"
																		name="otherIllnesses" placeholder="Enter name">
																</div>
																<div class="mb-3">
																	<label class="form-label">Please list any
																		Operations and Dates of Each </label>
																	<textarea class="form-control"
																		name="listAnyOperationsAndDatesOfEach" rows="6"
																		placeholder="List any operations and dates of each.."></textarea>
																</div>
																<div class="mb-3">
																	<label class="form-label">Please list your
																		Current Medications </label>
																	<textarea class="form-control"
																		name="listYourCurrentMedications" rows="6"
																		placeholder="List your current medications.."></textarea>
																</div>
																<br />
																<div class="mb-3">
																	<h2 class="card-title">Healthy and unhealthy
																		habits</h2>
																</div>
																<div class="dropdown-divider"></div>
																<div class="mb-3">
																	<div class="form-label">Exercise</div>
																	<div>
																		<label class="form-check"> <input
																			class="form-check-input" type="radio" name="exercise"
																			value="Never"> <span class="form-check-label">Never</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="exercise"
																			value="1-2 days"> <span
																			class="form-check-label">1-2 days</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="exercise"
																			value="3-4 days"> <span
																			class="form-check-label">3-4 days</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="exercise"
																			value="5+ days"> <span
																			class="form-check-label">5+ days</span>
																		</label>
																	</div>
																</div>
																<div class="mb-3">
																	<div class="form-label">Eating following a diet</div>
																	<div>
																		<label class="form-check"> <input
																			class="form-check-input" type="radio" name="eatingFollowingADiet"
																			value="I have a loose diet"> <span
																			class="form-check-label">I have a loose diet</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="eatingFollowingADiet"
																			value="I have a strict diet"> <span
																			class="form-check-label">I have a strict diet</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="eatingFollowingADiet"
																			value="I don't have a diet plan"> <span
																			class="form-check-label">I don't have a diet
																				plan</span>
																		</label>
																	</div>
																</div>
																<div class="mb-3">
																	<div class="form-label">Alcohol Consumption</div>
																	<div>
																		<label class="form-check"> <input
																			class="form-check-input" type="radio" name="alcoholConsumption"
																			value="I don't drink"> <span
																			class="form-check-label">I don't drink</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="alcoholConsumption"
																			value="1-2 glasses/day"> <span
																			class="form-check-label">1-2 glasses/day</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="alcoholConsumption"
																			value="3-4 glasses/day"> <span
																			class="form-check-label">3-4 glasses/day</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="alcoholConsumption"
																			value="5+ glasses/day"> <span
																			class="form-check-label">5+ glasses/day</span>
																		</label>
																	</div>
																</div>
																<div class="mb-3">
																	<div class="form-label">Caffeine Consumption</div>
																	<div>
																		<label class="form-check"> <input
																			class="form-check-input" type="radio" name="caffeineConsumption"
																			value="I don't use caffeine"> <span
																			class="form-check-label">I don't use caffeine</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="caffeineConsumption"
																			value="1-2 cups/day"> <span
																			class="form-check-label">1-2 cups/day</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="caffeineConsumption"
																			value="3-4 cups/day"> <span
																			class="form-check-label">3-4 cups/day</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="caffeineConsumption"
																			value="5+ cups/day"> <span
																			class="form-check-label">5+ cups/day</span>
																		</label>
																	</div>
																</div>
																<div class="mb-3">
																	<div class="form-label">Do you smoke?</div>
																	<div>
																		<label class="form-check"> <input
																			class="form-check-input" type="radio" name="doYouSmoke"
																			value="No"> <span class="form-check-label">No</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="doYouSmoke"
																			value="0-1 pack/day"> <span
																			class="form-check-label">0-1 pack/day</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="doYouSmoke"
																			value="1-2 packs/day"> <span
																			class="form-check-label">1-2 packs/day</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="radio" name="doYouSmoke"
																			value="2+ packs/day"> <span
																			class="form-check-label">2+ packs/day</span>
																		</label>
																	</div>
																</div>
																<div class="mb-3">
																	<label class="form-label">Include other
																		comments regarding your Medical History </label>
																	<textarea class="form-control"
																		name="includeOtherCommentsRegardingYourMedicalHistory"
																		rows="6" placeholder="List your current medications.."></textarea>
																</div>
																<div class="form-group mb-3 ">
																	<label class="form-label">Completed Viewing Patient?</label>
																	<small class="form-hint">If you would like to refer the patient to another doctor, please leave it as No.</small>
																	<div>
																		<select class="form-select" name="completedViewingPatient" id="completedViewingPatient">
																			<option value="Yes" selected>Yes</option>
																			<option value="No">No</option>
																		</select>
																	</div>
																</div>
																<div class="form-footer">
																	<button type="submit" class="btn btn-primary">Submit</button>
																</div>
															</form>
															<%
															}
															} catch (Exception e) {
															System.out.println(e);
															}
															%>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tabs-profile-7">
											<div class="row row-cards">
												<div class="col-12">
													<div class="card">
														<div class="card-header">
															<h3 class="card-title">Previous Medical Record</h3>
														</div>
														<div class="card-body">
															<form>
																<div class="form-group mb-3 ">
																	<label class="form-label">Email address</label>
																	<div>
																		<input type="email" class="form-control"
																			aria-describedby="emailHelp"
																			placeholder="Enter email"> <small
																			class="form-hint">We'll never share your
																			email with anyone else.</small>
																	</div>
																</div>
																<div class="form-group mb-3 ">
																	<label class="form-label">Password</label>
																	<div>
																		<input type="password" class="form-control"
																			placeholder="Password"> <small
																			class="form-hint"> Your password must be 8-20
																			characters long, contain letters and numbers, and
																			must not contain spaces, special characters, or
																			emoji. </small>
																	</div>
																</div>
																<div class="form-group mb-3 ">
																	<label class="form-label">Select</label>
																	<div>
																		<select class="form-select">
																			<option>Option 1</option>
																		</select>
																	</div>
																</div>
																<div class="form-group mb-3">
																	<label class="form-label">Checkboxes</label>
																	<div>
																		<label class="form-check"> <input
																			class="form-check-input" type="checkbox" checked="">
																			<span class="form-check-label">Option 1</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox"> <span
																			class="form-check-label">Option 2</span>
																		</label> <label class="form-check"> <input
																			class="form-check-input" type="checkbox" disabled="">
																			<span class="form-check-label">Option 3</span>
																		</label>
																	</div>
																</div>
															</form>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tabs-settings-7">
											<div>Donec ac vitae diam amet vel leo egestas consequat
												rhoncus in luctus amet, facilisi sit mauris accumsan nibh
												habitant senectus</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- This is the start of the footer -->
			<!-- <p>This is where the footer should be but I have removed it.</p> -->
			<!-- This is the end of the footer -->
		</div>
		<!-- This is the end of the contents of the page -->
	</div>
	<!-- Libs JS -->
	<script src="./dist/libs/apexcharts/dist/apexcharts.min.js" defer></script>
	<script src="./dist/libs/jsvectormap/dist/js/jsvectormap.min.js" defer></script>
	<script src="./dist/libs/jsvectormap/dist/maps/world.js" defer></script>
	<script src="./dist/libs/jsvectormap/dist/maps/world-merc.js" defer></script>
	<!-- Tabler Core -->
	<script src="./dist/js/tabler.min.js" defer></script>
	<script src="./dist/js/demo.min.js" defer></script>
</body>
</html>