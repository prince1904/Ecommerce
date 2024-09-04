<%@page import="com.Revshop.entities.Admin"%>
<%@page import="com.Revshop.entities.Cart"%>
<%@page import="com.Revshop.dao.CartDao"%>
<%@page import="com.Revshop.entities.User"%>
<%@page import="java.util.List"%>
<%@page import="com.Revshop.entities.Category"%>
<%@page import="com.Revshop.helper.ConnectionProvider"%>
<%@page import="com.Revshop.dao.CategoryDao"%>
<%
User user = (User) session.getAttribute("activeUser");
Admin admin = (Admin) session.getAttribute("activeAdmin");

CategoryDao catDao = new CategoryDao(ConnectionProvider.getConnection());
List<Category> categoryList = catDao.getAllCategories();
%>
<style>
    /* Navbar styles */
    .navbar {
        font-weight: 500;
        background-color: #343a40; /* Dark background */
    }

    .navbar-brand {
        color: #ff7f50; /* Coral color */
        font-size: 1.5rem;
        font-weight: bold;
    }

    .navbar-toggler-icon {
        background-color: #ff7f50; /* Coral color */
    }

    .nav-link {
        color: #ffffff !important; /* White color for links */
        font-size: 1rem;
    }

    .nav-link:hover {
        color: #ff7f50 !important; /* Coral color on hover */
    }

    .dropdown-menu {
        background-color: #ffffff !important; /* White background */
        border-color: #ff7f50; /* Coral border */
    }

    .dropdown-item:hover {
        background-color: #ff7f50 !important; /* Coral background */
        color: #ffffff !important; /* White text */
    }

    .btn-outline-light {
        color: #ff7f50 !important; /* Coral color */
        border-color: #ff7f50 !important; /* Coral border */
    }

    .btn-outline-light:hover {
        background-color: #ff7f50 !important; /* Coral background */
        color: #ffffff !important; /* White text */
    }

    .badge {
        background-color: #dc3545; /* Bootstrap danger color */
    }

    .navbar-toggler {
        border-color: #ff7f50; /* Coral color */
    }
</style>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="<%= admin != null ? "admin.jsp" : "index.jsp" %>">
        <img src="Images/th (5).jpg" style="width: 50px; height: 50px;"/>
            <i class="fa-sharp fa-solid fa-house"></i>&ensp;RevShop
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarContent">
            <!-- Search Form First -->
            <form class="d-flex pe-5" role="search" action="products.jsp" method="get">
                <input name="search" class="form-control me-2" size="50" type="search" placeholder="Search for products" aria-label="Search">
                <button class="btn btn-outline-light" type="submit">Search</button>
            </form>

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="products">Products</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Category</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="products.jsp?category=0">All Products</a></li>
                        <% for (Category c : categoryList) { %>
                            <li><a class="dropdown-item" href="products?category=<%=c.getCategoryId()%>"><%=c.getCategoryName()%></a></li>
                        <% } %>
                    </ul>
                </li>
            </ul>

            <% if (admin != null) { %>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><button type="button" class="btn nav-link" data-bs-toggle="modal" data-bs-target="#add-category"><i class="fa-solid fa-plus fa-xs"></i> Add Category</button></li>
                    <li class="nav-item"><button type="button" class="btn nav-link" data-bs-toggle="modal" data-bs-target="#add-product"><i class="fa-solid fa-plus fa-xs"></i> Add Product</button></li>
                    <li class="nav-item"><a class="nav-link" href="admin.jsp"><%= admin.getName() %></a></li>
                    <li class="nav-item"><a class="nav-link" href="LogoutServlet?user=admin"><i class="fa-solid fa-user-slash fa-sm">
                    <img src="Images/logout.png" style="width: 40px; height: 40px;border-radius:25px;"/>
                    </i> Logout</a></li>
                </ul>
            <% } else if (user != null) { 
                CartDao cartDao = new CartDao(ConnectionProvider.getConnection());
                int cartCount = cartDao.getCartCountByUserId(user.getUserId());
            %>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item position-relative">
                        <a class="nav-link" href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i> Cart
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill"><%=cartCount%></span>
                        </a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="profile.jsp"><%= user.getUserName() %></a></li>
                    <li class="nav-item"><a class="nav-link" href="LogoutServlet?user=user"><i class="fa-solid fa-user-slash"></i> Logout</a></li>
                </ul>
            <% } else { %>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="register.jsp"><i class="fa-solid fa-user-plus"></i> Register</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.jsp"><i class="fa-solid fa-user-lock"></i> Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="adminlogin.jsp">Admin</a></li>
                </ul>
            <% } %>
        </div>
    </div>
</nav>