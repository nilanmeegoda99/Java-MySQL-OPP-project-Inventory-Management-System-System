<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - IMS System</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>
<body>

	<c:forEach var="cus" items="${cusDetails}">
	
		<c:set var="id" value="${cus.id}"/>
		<c:set var="name" value="${cus.name}"/>
		<c:set var="email" value="${cus.email}"/>
		<c:set var="phone" value="${cus.phone}"/>
		<c:set var="username" value="${cus.userName}"/>
		<c:set var="password" value="${cus.password}"/>
		
     </c:forEach>
	
		<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark navbar-custom">
        <div class="container"><a class="navbar-brand" href="#">IMS System</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navbarResponsive"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">Welcome to the System</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="nlogin.jsp">Log Out</a></li>
                </ul>
            </div>
        </div>
    </nav>
   
    
    <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>IMS Dashboard</h3>
                    
                </div>

                <ul class="list-unstyled components">
                    <li>
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">
                           
                            Stock Management
                        </a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li><a href="stockreport.jsp">Stock Report</a></li>
                            
                           
                        </ul>
                    </li>
                   
                    <li>
                        <a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false">
                            
                            Product Management
                        </a>
                        <ul class="collapse list-unstyled" id="pageSubmenu2">
                            <li><a href="addproduct.jsp">Add New Product</a></li>
                            <li><a href="productreport.jsp">Product Report</a></li>
                           
                        </ul>
                    </li>
                    <li>
                        <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false">
                           
                            Order Management
                        </a>
                        <ul class="collapse list-unstyled" id="pageSubmenu3">
                            <li><a href="#">Create Order</a></li>
                            <li><a href="#">Order Report</a></li>
                           
                        </ul>
                    </li>
                     <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            About
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-send"></i>
                            Contact
                        </a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">

                 <img src="assets\img\invent.jpg" class="img-fluid" alt="Responsive image" height="460px" width="100%">
                 
            </div>
        </div>





        <!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                 });
             });
         </script>
    <footer class="py-5 bg-black">
        <div class="container">
            <p class="text-center text-white m-0 small">Copyright&nbsp;© IMS System 2020</p>
        </div>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/script.min.js"></script>
</body>
</html>