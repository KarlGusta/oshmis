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
<title>OSHMIS - Add a Patient</title>
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
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbar-menu">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- This is the logo on the top of the aside bar -->
				<h1 class="navbar-brand navbar-brand-autodark">
					<a href="."> <img
						src="Assets/Images/Achamit_high_resolution_logo_transparent_background.png"
						width="110" height="32" alt="Tabler" class="navbar-brand-image">
					</a>
				</h1>
				<!-- This is the end of the logo on the top of the aside bar -->

				<!-- This is the Navigation Bar -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="navbar-nav pt-lg-3">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#navbar-base"
							data-bs-toggle="dropdown" data-bs-auto-close="false"
							role="button" aria-expanded="false"> <span
								class="nav-link-icon d-md-none d-lg-inline-block"> <!-- Download SVG icon from http://tabler-icons.io/i/package -->
									<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
										height="24" viewBox="0 0 24 24" stroke-width="2"
										stroke="currentColor" fill="none" stroke-linecap="round"
										stroke-linejoin="round">
										<path stroke="none" d="M0 0h24v24H0z" fill="none" />
										<polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3" />
										<line x1="12" y1="12" x2="20" y2="7.5" />
										<line x1="12" y1="12" x2="12" y2="21" />
										<line x1="12" y1="12" x2="4" y2="7.5" />
										<line x1="16" y1="5.25" x2="8" y2="9.75" /></svg>
							</span> <span class="nav-link-title"> Patient management </span>
						</a>
							<div class="dropdown-menu">
								<div class="dropdown-menu-columns">
									<div class="dropdown-menu-column">
										<a class="dropdown-item" href="add-a-patient.jsp"> Add a
											patient </a> <a class="dropdown-item"
											href="all-patients-edit-patients.jsp"> All patients and
											edit patient </a> <a class="dropdown-item"
											href="all-patients-view-patients.jsp"> All patients and
											view patient </a>
									</div>
								</div>
							</div></li>
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
															<h3 class="card-title">Basic form</h3>
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
																<div class="form-footer">
																	<button type="submit" class="btn btn-primary">Submit</button>
																</div>
															</form>
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