<%--
  Created by IntelliJ IDEA.
  User: imuxt
  Date: 1/9/2024
  Time: 8:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>New Product</title>
    <link href="<%= request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <form id="myForm" action="<%= request.getContextPath()%>/submitaddproduct">
        <div class="mb-3">
            <label for="name" class="form-label">Name: </label>
            <input type="text"  id="name" name="name" required>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price: </label>
            <input type="number" id="price" name="price" required>
        </div>
        <button type="submit" class="btn btn-success">Submit</button>
    </form>
    <a href="${pageContext.request.contextPath}/products" class="btn btn-dark">Back to Products</a>
<%--    <script>--%>
<%--        function submitForm() {--%>
<%--            document.getElementById("myForm").submit();--%>
<%--        }--%>
<%--    </script>--%>
</body>
</html>
