<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="Components/common_css_js.jsp"%>
<style>
    /* Page background and font */
    body {
        background: linear-gradient(135deg, #343a40, #ff7f50); /* Matching gradient background */
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: #343a40;
    }

    /* Card styling */
    .card {
        border: none;
        border-radius: 20px; /* Rounded corners */
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
        background-color: #ffffff; /* White card background */
    }

    .card-body {
        padding: 40px; /* Spacious padding */
    }

    /* Image and heading */
    .container.text-center img {
        max-width: 100px;
        border-radius: 50%;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow around image */
    }

    h3.text-center {
        color: #343a40;
        margin-top: 20px;
        font-weight: bold;
    }

    /* Form styling */
    .form-label {
        font-weight: bold;
        font-size: 16px; /* Larger label text */
        color: #333; /* Darker label color */
    }

    .form-control {
        border-radius: 20px; /* Rounded input fields */
        padding: 15px; /* Larger padding */
        border: 1px solid #ccc; /* Light border */
    }

    /* Buttons */
    .btn-outline-primary {
        border-radius: 50px; /* Pill-shaped button */
        padding: 10px 30px; /* Spacious button */
        font-size: 16px; /* Larger button text */
        transition: all 0.3s ease; /* Smooth hover transition */
        color: #ff7f50;
        border-color: #ff7f50;
    }

    .btn-outline-primary:hover {
        background-color: #ff7f50; /* Primary color on hover */
        color: white; /* White text on hover */
    }

    /* Links */
    .text-center a {
        color: #ff7f50; /* Primary color links */
        font-weight: bold;
        transition: color 0.3s ease; /* Smooth color transition */
        text-decoration: none;
    }

    .text-center a:hover {
        color: #d66a39; /* Darker shade on hover */
    }

    /* Container spacing */
    .container-fluid {
        margin-top: 80px; /* Center the form vertically */
    }

    .mb-4 {
        margin-bottom: 1.5rem;
    }
</style>
</head>
<body>  

	<!--navbar -->
	<%@include file="Components/navbar.jsp"%>

	<!-- Login Form -->
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<div class="container text-center">
							<img src="Images/login.png" class="img-fluid">
						</div>
						<h3 class="text-center mt-3">Sign-In</h3>
						<hr>
						<%@include file="Components/alert_message.jsp" %>
						
						<!-- Login Form -->
						<form id="login-form" action="LoginServlet" method="post">
							<input type="hidden" name="login" value="user"> 
							<div class="mb-4">
								<label class="form-label">Email</label> 
								<input type="email" name="user_email" placeholder="Email address" class="form-control" required>
							</div>
							<div class="mb-4">
								<label class="form-label">Password</label>
								<input type="password" name="user_password" placeholder="Enter your password" class="form-control" required>
							</div>
							<div id="login-btn" class="container text-center">
								<button type="submit" class="btn btn-outline-primary me-3">Login</button>
							</div>
						</form>
						
						<!-- Additional links -->
						<div class="mt-4 text-center">
							<h6><a href="forgot_password.jsp">Forgot Password?</a></h6>
							<h6>
								Don't have an account?<a href="register.jsp"> Sign Up</a>
							</h6>
						</div>
					</div>  
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<%@include file="Components/footer.jsp"%>
</body>
</html>
