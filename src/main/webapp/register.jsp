<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<%@include file="Components/common_css_js.jsp"%>
<style>
    /* Page background */
    body {
        background: linear-gradient(135deg, #ff7f50, #343a40);
        color: #343a40;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    /* Card styling */
    .card {
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        border-radius: 15px;
        background-color: #ffffff;
    }

    /* Form styling */
    label {
        font-weight: bold;
    }

    .form-control {
        border-radius: 20px;
        padding: 10px;
    }

    .form-select {
        border-radius: 20px;
        padding: 10px;
    }

    .form-check-input {
        margin-left: 10px;
    }

    /* Buttons */
    .btn-outline-primary {
        border-radius: 20px;
        padding: 10px 20px;
        color: #ff7f50;
        border-color: #ff7f50;
    }

    .btn-outline-primary:hover {
        background-color: #ff7f50;
        color: #ffffff;
    }

    /* Centered image */
    .container.text-center img {
        max-width: 80px;
        border-radius: 50%;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    /* Headings */
    h3.text-center {
        margin-top: 20px;
        color: #343a40;
        font-weight: bold;
    }

    /* Spacing */
    .mt-4, .my-4 {
        margin-top: 1.5rem !important;
    }

    .g-0 {
        gap: 0 !important;
    }
</style>
</head>
<body>
    <!-- Navbar -->
    <%@include file="Components/navbar.jsp"%>

    <!-- Registration Form -->
    <div class="container-fluid mt-4">
        <div class="row g-0 justify-content-center">
            <div class="col-md-6">
                <div class="card p-4">
                    <div class="card-body px-5">
                        <div class="container text-center">
                            <img src="Images/signUp.png" class="img-fluid">
                        </div>
                        <h3 class="text-center">Create Account</h3>
                        <hr>
                        <%@include file="Components/alert_message.jsp"%>

                        <!-- Registration Form -->
                        <form id="register-form" action="RegisterServlet" method="post">
                            <div class="row">
                                <div class="col-md-6 mt-2">
                                    <label class="form-label">Your name</label>
                                    <input type="text" name="user_name" class="form-control"
                                        placeholder="First and last name" required>
                                </div>
                                <div class="col-md-6 mt-2">
                                    <label class="form-label">Email</label>
                                    <input type="email" name="user_email" placeholder="Email address"
                                        class="form-control" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mt-2">
                                    <label class="form-label">Mobile number</label>
                                    <input type="number" name="user_mobile_no"
                                        placeholder="Mobile number" class="form-control">
                                </div>
                                <div class="col-md-6 mt-5">
                                    <label class="form-label pe-3">Gender</label>
                                    <input class="form-check-input" type="radio" name="gender" value="Male">
                                    <span class="form-check-label pe-3 ps-1"> Male </span>
                                    <input class="form-check-input" type="radio" name="gender" value="Female">
                                    <span class="form-check-label ps-1"> Female </span>
                                </div>
                            </div>
                            <div class="mt-2">
                                <label class="form-label">Address</label>
                                <input type="text" name="user_address"
                                    placeholder="Enter Address (Area and Street)"
                                    class="form-control" required>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mt-2">
                                    <label class="form-label">City</label>
                                    <input class="form-control" type="text" name="city"
                                        placeholder="City/District/Town" required>
                                </div>
                                <div class="col-md-6 mt-2">
                                    <label class="form-label">Pincode</label>
                                    <input class="form-control" type="number" name="pincode"
                                        placeholder="Pincode" maxlength="6" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mt-2">
                                    <label class="form-label">State</label>
                                    <select name="state" class="form-select">
                                        <option selected>--Select State--</option>
                                        <!-- Populate state options as in your original code -->
                                    </select>
                                </div>
                                <div class="col-md-6 mt-2">
                                    <label class="form-label">Password</label>
                                    <input type="password" name="user_password"
                                        placeholder="Enter Password" class="form-control" required>
                                </div>
                            </div>

                            <div id="submit-btn" class="container text-center mt-4">
                                <button type="submit" class="btn btn-outline-primary me-3">Submit</button>
                                <button type="reset" class="btn btn-outline-primary">Reset</button>
                            </div>
                            <div class="mt-3 text-center">
                                <h6>
                                    Already have an account?<a href="login.jsp"
                                        style="text-decoration: none"> Sign in</a>
                                </h6>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <%@include file="Components/footer.jsp"%>
</body>
</html>
