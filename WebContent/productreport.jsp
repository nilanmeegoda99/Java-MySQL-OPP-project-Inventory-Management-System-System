<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Product Reports - IMS System</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>
<body>

	<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/stocklinkdb"
        user="root" password="suwani1960"
    />
    
     <sql:query var="listProducts"   dataSource="${myDS}">
        
        SELECT * FROM product_tb;
    </sql:query>
    
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
    <div class="container" style="margin-top: 10px;margin-bottom: 10px;">
        <div class="col-md-12 search-table-col">
            <div class="form-group pull-right col-lg-4"><input type="text" class="search form-control" placeholder="Search by typing here.."></div><span class="counter pull-right"></span>
            <div class="table-responsive table-bordered table table-hover table-bordered results">
                <table class="table table-bordered table-hover">
                    <thead class="bill-header cs">
                        <tr>
                            <th id="trs-hd" class="col-lg-1" style="width: 676px;">Product ID</th>
                            <th id="trs-hd" class="col-lg-2" style="width: 692px;">Product Name</th>
                            <th id="trs-hd" class="col-lg-3" style="width: 734px;">Price per Unit</th>
                            <th id="trs-hd" class="col-lg-2" style="width: 746px;">Category</th>
                            <th id="trs-hd" class="col-lg-2" style="width: 724px;">Manufacture</th>
                            <th id="trs-hd" class="col-lg-2" style="width: 723px;">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                         <c:forEach var="prod" items="${listProducts.rows}">
                         
                            <c:set var="prodid" value="${prod.prod_ID}"/>
							<c:set var="prodname" value="${prod.prod_name}"/>
							<c:set var="prodUPC" value="${prod.prod_UPC}"/>
							<c:set var="pcu" value="${prod.cost_per_unit}"/>
							<c:set var="prodsku" value="${prod.prod_SKU}"/>
							<c:set var="prodtyp" value="${prod.prod_type}"/>
							<c:set var="prodmanu" value="${prod.prod_manufacuture}"/>
							<c:set var="prodamnt" value="${prod.amount_instk}"/>
							
							
							
                         
                        <tr>
                            <td><c:out value="${prod.prod_ID}" /></td>
                            <td><c:out value="${prod.prod_name}" /></td>
                            <td><c:out value="${prod.cost_per_unit}" /></td>
                            <td><c:out value="${prod.prod_type}" /></td>
                            <td><c:out value="${prod.prod_manufacuture}" /></td>
                            <td>
                            
                            <c:url value="updateproduct.jsp" var="produpdatep">
                            
								<c:param name="prodid" value="${prodid}"/>
								<c:param name="prodname" value="${prodname}"/>
								<c:param name="produpc" value="${prodUPC}"/>
								<c:param name="pcu" value="${pcu}"/>
								<c:param name="prodSku" value="${prodsku}"/>
								<c:param name="prodtyp" value="${prodtyp}"/>
								<c:param name="prodmanu" value="${prodmanu}"/>
								<c:param name="prodamntstk" value="${prodamnt}"/>
								
							</c:url>
							<c:url value="deleteproduct.jsp" var="proddelete">
                            
								<c:param name="prodid" value="${prodid}"/>
								
								
							</c:url>
                            <a href="${produpdatep}"><button class="btn btn-success" style="margin-left: 5px;" type="submit"><i class="fa fa-check" style="font-size: 15px;"></i></button></a>
                            <a href="${proddelete}"><button class="btn btn-danger" style="margin-left: 5px;" type="submit"><i class="fa fa-trash" style="font-size: 15px;"></i></button></a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            
            <a href = "dasgboard.jsp">
            <button class="btn btn-primary" type="button" style="background-color: rgb(18,164,173);">Back to Home</button>
        	</a>
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