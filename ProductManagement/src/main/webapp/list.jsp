<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 31/01/2024
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
    <h1 class="my-3">Quản Lý Sản Phẩm</h1>
    <div class="row d-flex mx-3">
        <div class="col-9">
            <a class="btn btn-warning" role="button" href="/product?action=create">Thêm mới</a>
        </div>
        <div class="col-3">
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="">
                <button class="btn btn-outline-secondary" type="submit">Tìm</button>
            </form>
        </div>
    </div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Stt</th>
            <th scope="col">Tên sản phẩm</th>
            <th scope="col">Giá</th>
            <th scope="col">Mô Tả</th>
            <th scope="col">Nhà Sản Xuất</th>
            <th scope="col">Chi tiết</th>
            <th scope="col">Chỉnh sửa</th>
            <th scope="col">Xoá</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="p" items="${product}" >
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td>${p.price}</td>
                <td>${p.describe}</td>
                <td>${p.producer}</td>
                <td>
                    <a class="btn btn-warning" href="/product?action=detail&id=${p.id}" role="button">Chi tiết</a>
                </td>
                <td>
                    <a class="btn btn-warning" href="/product?action=edit&id=${p.id}" role="button">Chỉnh
                        sửa</a>
                </td>
                <td>
                    <a class="btn btn-warning" href="/product?action=delete&id=${p.id}" role="button">Xoá</a>
                </td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
