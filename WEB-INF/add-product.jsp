
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <h1>Thêm mới sản phẩm</h1>
        <form:form method="post" action="/products/add" modelAttribute="product">
            <table>
                <tr>
                    <td>Mã sản phẩm:</td>
                    <td><form:input path="id"/></td>
                </tr>
                <tr>
                    <td>Tên sản phẩm:</td>
                    <td><form:input path="name"/></td>
                </tr>
                <tr>
                    <td>Mô tả sản phẩm:</td>
                    <td><form:input path="description"/></td>
                </tr>
                <tr>
                    <td>Giá sản phẩm:</td>
                    <td><form:input path="price"/></td>
                </tr>
                <tr>
                    <td>Đường dẫn ảnh:</td>
                    <td><form:input path="image"/></td>
                </tr>
                <tr>
                    <td colspan="2"><button type="submit">Thêm sản phẩm</button></td>
                </tr>
            </table>
        </form:form>
        <a href="/products">Quay lại</a>
</body>
</html>
