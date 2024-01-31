<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 31/01/2024
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chi tiết</title>
</head>
<body>
<form method="post">
    <fieldset>
        <legend>Thông tin chi tiết sản phẩm</legend>
        <table>

            <tr>
                <td>Tên: </td>
                <td>${requestScope["product"].getName()}</td>
            </tr>
            <tr>
                <td>Giá: </td>
                <td>${requestScope["product"].getPrice()}</td>
            </tr>
            <tr>
                <td>Email: </td>
                <td>${requestScope["product"].getDescribe()}</td>
            </tr>
            <tr>
                <td>Địa chỉ: </td>
                <td>${requestScope["product"].getProducer()}</td>
            </tr>
            <tr>
                <td><a href="/product">Quay lại danh sách sản phẩm</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
