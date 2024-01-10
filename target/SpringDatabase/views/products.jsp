<%@ page import="java.util.List" %>
<%@ page import="org.example.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: imuxt
  Date: 1/9/2024
  Time: 6:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<% List<Product> productList = (List<Product>) request.getAttribute("products");%>
<%String path = "http://localhost:8080/SpringDatabase/product";%>
<html>
<head>
    <title>Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Name</th>
                <th scope="col">Price</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody>
            <% for(Product product : productList){%>
                <tr>
                    <td><%=product.getId()%></td>
                    <td><%=product.getName()%></td>
                    <td><%=product.getPrice()%></td>
                    <td>
                        <a href="<%= request.getContextPath()%>/product/<%= product.getId()%>">view</a>
                        <a href="<%= request.getContextPath()%>/updateproduct/<%= product.getId()%>">update</a>
                        <a href="<%= request.getContextPath()%>/delete/<%= product.getId()%>">delete</a>
                    </td>
                </tr>
            <%}%>
        </tbody>
    </table>
    <a href="<%= request.getContextPath()%>">Home</a>
</body>
</html>
