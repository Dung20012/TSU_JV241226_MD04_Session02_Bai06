<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
        <a href="/products/add"><button>Thêm mới sản phẩm</button></a>
        <h1>Danh sách sản phẩm</h1>
        <table border="1" cellpadding="10">
            <tr>
                <th>STT</th>
                <th>NAME</th>
                <th>DESC</th>
                <th>PRICE</th>
                <th>IMAGE</th>
                <th>ACTIONS</th>
            </tr>
            <c:forEach var="product" items="${productList}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>${product.name}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td><img src="${product.image}" width="100" /></td>
                    <td>
                        <a href="/products/delete?id=${product.id}">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
</body>
</html>
