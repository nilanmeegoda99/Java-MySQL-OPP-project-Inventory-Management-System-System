<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Delete Product - IMS System</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>
<body>
	
	<%
		
		int prodid = Integer.parseInt(request.getParameter("prodid"));
		
	%>
	
		<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark navbar-custom">
        <div class="container"><a class="navbar-brand" href="#">IMS System</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navbarResponsive"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"></li>
                    <li class="nav-item" role="presentation"></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="row register-form" style="margin-top: 43px;">
        <div class="col-md-8 offset-md-2">
            <form class="custom-form" action="DeleteProductserv" method="post">
                <h1>Delete Product</h1>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Product ID </label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="prodid" value="<%= prodid%>" readonly></div>
                </div>
                <div class="form-row form-group">
                    <div class="col">
                        <div class="alert alert-success" role="alert" style="background-color: rgb(255,217,15);height: 44px;"><span style="color: rgb(41,33,33);">Are You Sure you want to delete the product ?</span></div>
                    </div>
                </div>
                
                <button class="btn btn-light submit-button" type="submit" name="submit" >Delete Product</button>
                
                <a href="productreport.jsp">
                <button class="btn btn-light submit-button" type="button">&nbsp; &nbsp; &nbsp; &nbsp;Cancel&nbsp; &nbsp; &nbsp;&nbsp;</button>
          		</a>
           </form>
        </div>
    </div>
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