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
</head>
<body>
    <div class="container mt-4">
        <h1>Product Details</h1>
        <div class="card mt-3">
            <div class="card-body">
                <h2 class="card-title">Name: <%= product.getName()%></h2>
                <h2 class="card-text">Price: $<%= product.getId()%></h2>
            </div>
        </div>
        <a href="${pageContext.request.contextPath}/products" class="btn btn-secondary mt-3">Back to Products</a>
    </div>
</body>
</html>
