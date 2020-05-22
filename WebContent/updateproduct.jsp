<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Update Product</title>
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
		String prodname = request.getParameter("prodname");
		String prodUPC = request.getParameter("produpc");
		double prodcostU = Double.parseDouble(request.getParameter("pcu")) ;
		String prodsku = request.getParameter("prodSku");
		String prodtype = request.getParameter("prodtyp");
		String prodmanu = request.getParameter("prodmanu");
		int prodamount = Integer.parseInt(request.getParameter("prodamntstk"));
		
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
        
            <form class="custom-form" action="UpdateProductserv" method="post">
                <h1>Update Product</h1>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Product ID </label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="prodid" value="<%= prodid%>" readonly></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Product Name </label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="prodname"  value="<%= prodname%>"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Product UPC </label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="produpc" value="<%= prodUPC%>"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Cost Per Unit </label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="prodcostU" value="<%= prodcostU%>"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Product SKU </label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="prodsku" value="<%= prodsku%>"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Product Type </label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="prodtype" value="<%= prodtype%>"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Product Manufacture </label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="prodmanufac" value="<%= prodmanu%>"></div>
                </div>
                <div class="form-row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Amount in Stock </label></div>
                    <div class="col-sm-6 input-column"><input class="form-control" type="text" name="prodamount" value="<%= prodamount%>"></div>
                </div>
                
                <div class="form-group"><button class="btn btn-primary btn-block" type="submit" name="submit" value="Login" style="background-color: rgb(71,119,244);">Update Product</button></div>
                <div class="form-group"><a href="dasgboard.jsp" class="button" style="background-color: rgb(71,119,244);">Back to Home</a></div>
                
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