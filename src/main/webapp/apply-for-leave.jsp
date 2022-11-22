<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Achamit - Leave Application</title>
    <!-- CSS files -->
    <link href="./dist/css/tabler.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-flags.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-payments.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-vendors.min.css" rel="stylesheet"/>
    <link href="./dist/css/demo.min.css" rel="stylesheet"/>
  </head>
  <body >
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
                    Leave application
                  </span>
                </a>
                <div class="dropdown-menu">
                  <div class="dropdown-menu-columns">
                    <div class="dropdown-menu-column">
                      <a class="dropdown-item" href="apply-for-leave.jsp">
                        Apply for leave
                      </a>
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
      <header class="navbar navbar-expand-md navbar-light d-none d-lg-flex d-print-none">
        <div class="container-xl">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="navbar-nav flex-row order-md-last">
          
          <!-- This is the start of the change theme and the notification center -->
            <div class="d-none d-md-flex">
            <!-- These are the change theme icons -->
              <a href="?theme=dark" class="nav-link px-0 hide-theme-dark" title="Enable dark mode" data-bs-toggle="tooltip" data-bs-placement="bottom">
                <!-- Download SVG icon from http://tabler-icons.io/i/moon -->
                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 3c.132 0 .263 0 .393 0a7.5 7.5 0 0 0 7.92 12.446a9 9 0 1 1 -8.313 -12.454z" /></svg>
              </a>
              <a href="?theme=light" class="nav-link px-0 hide-theme-light" title="Enable light mode" data-bs-toggle="tooltip" data-bs-placement="bottom">
                <!-- Download SVG icon from http://tabler-icons.io/i/sun -->
                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="4" /><path d="M3 12h1m8 -9v1m8 8h1m-9 8v1m-6.4 -15.4l.7 .7m12.1 -.7l-.7 .7m0 11.4l.7 .7m-12.1 -.7l-.7 .7" /></svg>
              </a>
              <!-- This is the end of the change theme icons -->
              
              <!-- This is the start of the notification center -->
                <!-- <p>This is where the notification center should be but I have removed it.</p> -->
              <!-- This is the end of the notification center -->
            </div>
            <!-- This is the end of the change theme and the notification center -->
            
            <!-- This is the Name, Icon and the Designation on the Menu Bar -->
            <div class="nav-item dropdown">
              <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown" aria-label="Open user menu">
                <!-- This is the profile photo. I have commented it out -->
                  <!--<span class="avatar avatar-sm" style="background-image: url(./static/avatars/000m.jpg)"></span>  -->
                <!-- This is the end of the profile photo. I have commented it out -->
                <div class="d-none d-xl-block ps-2">
                  <div>Pawe Kuna</div>
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
                    <input type="text" value="" class="form-control" placeholder="Search…" aria-label="Search in website">
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
        <div class="page-body">
        <div class="container-xl">
					<!-- Content here -->
					<!-- Hidden field for the Sweetalert -->
					<input type="hidden" id="status"
						value="<%=request.getAttribute("status")%>" />

					<div class="page page-center">
						<div class="container-tight py-4">
							<form class="card card-md" action="registerfarmer" method="post">
								<div class="card-body">
									<h2 class="card-title text-center mb-4">Registry's Leave Application Form</h2>
									<div class="mb-3">
										<div class="row">
											<div class="col">
												<label class="form-label">First Name</label> <input
													type="text" name="applicantFirstName" id="applicantFirstName"
													class="form-control" placeholder="Enter first name">
											</div>
											<div class="col">
												<label class="form-label">Last Name</label> <input
													type="text" name="applicantLastName" id="applicantLastName"
													class="form-control" placeholder="Enter last name">
											</div>
										</div>
									</div>
					                <div class="mb-3">
										<div class="form-label">Select the Leave type</div>
										<select class="form-select" name="leaveType" id="leaveType">
											<option value="Annual leave">Annual leave</option>
											<option value="Maternity">Maternity</option>
											<option value="Paternity">Paternity</option>
											<option value="Compassionate">Compassionate</option>
										</select>
									</div>
									<div class="mb-3">
                                      <label class="form-label">Job title</label>
                                      <input class="form-control" list="datalistOptions" placeholder="Type to search job title..."/>
                                      <datalist id="datalistOptions">
                                           <option value="ICT Officer"/>
                                           <option value="HR Officer"/>
                                           <option value="Payroll Officer"/>
                                           <option value="Finance Officer"/>
                                           <option value="Procurement Officer"/>
                                           <option value="Trade Officer"/>
                                           <option value="Health Officer"/>
                                           <option value="Secretary"/>
                                           <option value="Nurse"/>
                                           <option value="Clinical officer"/>
                                      </datalist>
                                    </div>
                                    <div class="mb-3">
                                           <label class="form-label">Personal Number</label>
                                           <input type="text" class="form-control" name="personalNumber" placeholder="Input personal number">
                                    </div>
                                    <div class="mb-3">
                                           <label class="form-label">ID Number</label>
                                           <input type="text" class="form-control" name="idNumber" placeholder="Input ID number">
                                    </div>
                                    <div class="mb-3">
                                           <label class="form-label">Department</label>
                                           <input type="text" class="form-control" name="department" placeholder="Input department">
                                    </div>
                                    <div class="input-icon mb-2">
                                           <label class="form-label">Department</label>
                                           <input class="form-control " placeholder="Select a date" id="datepicker-icon" value="2020-06-20"/>
                                           <span class="input-icon-addon"><!-- Download SVG icon from http://tabler-icons.io/i/calendar -->
                                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><rect x="4" y="5" width="16" height="16" rx="2" /><line x1="16" y1="3" x2="16" y2="7" /><line x1="8" y1="3" x2="8" y2="7" /><line x1="4" y1="11" x2="20" y2="11" /><line x1="11" y1="15" x2="12" y2="15" /><line x1="12" y1="15" x2="12" y2="18" /></svg>
                                           </span>
                                    </div>
									<div class="mb-3">
										<label class="form-label">Start Date</label>
										<div class="row g-2">
											<div class="col-5">
												<select name="applicantStartMonth" class="form-select">
													<option value="">Month</option>
													<option value="1">January</option>
													<option value="2">February</option>
													<option value="3">March</option>
													<option value="4">April</option>
													<option value="5">May</option>
													<option selected="selected" value="6">June</option>
													<option value="7">July</option>
													<option value="8">August</option>
													<option value="9">September</option>
													<option value="10">October</option>
													<option value="11">November</option>
													<option value="12">December</option>
												</select>
											</div>
											<div class="col-3">
												<select name="applicantStartDate" class="form-select">
													<option value="">Day</option>
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
											</div>
											<div class="col-4">
												<select name="applicantStartYear" class="form-select">
													<option value="">Year</option>
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
											</div>
										</div>
									</div>
									<div class="mb-3">
									  <label class="form-label">Telephone number</label>
									  <input type="text" name="farmerTelephoneNumber" id="farmerTelephoneNumber" class="form-control" data-mask="(000) 000-000-0" data-mask-visible="true" placeholder="(000) 000-000-0" autocomplete="off"/>
									</div>
                                    <div class="mb-3">
                                      <div class="form-label">Select type of farming practiced</div>
                                      <select name="farmingPracticed" id="farmingPracticed" class="form-select">
                                        <option value="Crop-based farming">Crop-based farming</option>
                                        <option value="animal-based farming">Animal-based farming</option>
                                        <option value="Both crop-based and animal-based farming">Both crop-based and animal-based farming</option>
                                      </select>
                                    </div>
									<div class="mb-3">
										<div class="form-label">Select Farmer's location</div>
										<select name="farmerLocation" id="farmerLocation" class="form-select">
											<option value="Nanyuki">Nanyuki ward</option>
											<option value="Thingithu">Thingithu ward</option>
											<option value="Igwamiti">Igwamiti ward</option>
										</select>
									</div>
									<div class="mb-3">
										<label class="form-label">Farmer's number of years farming</label> 
										<select name="farmerNumberOfYearsFarming" id="farmerNumberOfYearsFarming" class="form-select">
											<option value="">No. of years farming</option>
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
											<option value="32">32</option>
											<option value="33">33</option>
											<option value="34">34</option>
											<option value="35">35</option>
											<option value="36">36</option>
											<option value="37">37</option>
											<option value="38">38</option>
											<option value="39">39</option>
											<option value="40">40</option>
											<option value="40+">40+<option>
										</select>
									</div>
									<div class="mb-3">
										<label class="form-label">Farmer's additional notes <span
											class="form-label-description">56/100</span></label>
										<textarea class="form-control" name="farmerAdditionalNotes"
											id="farmerAdditionalNotes" rows="6" placeholder="Content..">Oh! Come and see the violence inherent in the system! Help, help, I'm being repressed! We shall say 'Ni' again to you, if you do not appease us. I'm not a witch. I'm not a witch. Camelot!</textarea>
									</div>
									
									<!-- This is from the registration table that will be saved to the register farmer table -->
									<input type="hidden" id="userRegisteringTheFarmer" name="userRegisteringTheFarmer" value="<%=session.getAttribute("name")%>">
									
									<div class="form-footer">
										<button type="submit" class="btn btn-primary w-100">Apply for leave</button>
									</div>
								</div>
							</form>
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