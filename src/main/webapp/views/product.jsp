<%@ page import="org.example.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: imuxt
  Date: 1/9/2024
  Time: 7:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<% Product product = (Product) request.getAttribute("product");%>
<html>
<head>
    <title>Product</title>
    <link href="<%= request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div class="container mt-4">
        <h1>Product Details</h1>
        <div class="card mt-3">
            <div class="card-body">
                <h2 class="card-title">Id: <%= product.getId()%></h2>
                <h2 class="card-title">Name: <%= product.getName()%></h2>
                <h2 class="card-text">Price: $<%= product.getPrice()%></h2>
            </div>
        </div>
        <a href="<%= request.getContextPath()%>/delete/<%= product.getId()%>" class="btn btn-danger">Delete</a>
        <a href="<%= request.getContextPath()%>/updateproduct/<%= product.getId()%>" class="btn btn-warning">Update</a>
        <a href="${pageContext.request.contextPath}/products" class="btn btn-dark">Back to Products</a>
    </div>
    <script src="<%= request.getContextPath()%>/js"></script>

</body>
</html>
