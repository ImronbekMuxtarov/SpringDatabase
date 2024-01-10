<%@ page import="org.example.model.Product" %><%--
  Created by IntelliJ IDEA.
  User: imuxt
  Date: 1/10/2024
  Time: 1:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Update</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <% Product product = (Product) request.getAttribute("product");%>
</head>
<body>
<form id="myForm" action="<%= request.getContextPath()%>/submitupdateproduct/<%= product.getId()%>">
    <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text"  id="name" name="name" placeholder="<%= product.getName()%>">
    </div>
    <div class="mb-3">
        <label for="price" class="form-label">Price</label>
        <input type="number"  id="price" name="price" placeholder="<%= product.getPrice()%>">
    </div>
    <button type="submit" class="btn btn-primary" onclick="submitForm()">Submit</button>
</form>
<a href="${pageContext.request.contextPath}/products" class="btn btn-secondary mt-3">Back to Products</a>

<script>
    function submitForm() {
        document.getElementById("myForm").submit();
    }
</script>
</body>
</html>
