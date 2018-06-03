<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
        .mylist {
            margin: 0 auto;
            font-size: 11px;
            border-width: 1px;
            text-align: center;
            border-collapse:collapse;
            width: 200px;
        }
        td{
            border: black solid 1px;
        }
        th{
            background-color: black;
            color: white;
            border: black solid 1px;
        }
    </style>
    <title>员工列表</title>
</head>
<body>

<table class="mylist">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
    </tr>
    <c:forEach items="${message}" var="item" varStatus="status">
        <c:if test="${status.index % 2 == 0}">
            <tr style="background-color: #bebcbc">
        </c:if>
        <c:if test="${status.index % 2 != 0}">
            <tr style="background-color: snow">
        </c:if>
        <td>${item.id}</td>
        <td>${item.name}</td>
        <td>${item.age}</td>
        <td>${item.gender}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>