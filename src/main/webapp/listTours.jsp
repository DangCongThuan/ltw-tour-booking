<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 11/13/2023
  Time: 9:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Các chương trình DU LỊCH</h1>
    <table >
        <thead>
        <tr>
            <th>Chương trình</th>
            <th>Lịch khởi hành</th>
            <th>Giá</th>
            <th>Đặt</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${tourList}" var="tour">
                <tr>
                    <td>
                        <b>

                        <a href="tour-details?id=${tour.id}">${tour.description}</a><br>
                        </b>
                        <span>${tour.days}</span>
                    </td>
                    <td>
                        ${tour.departureSchedule}
                    </td>
                    <td>
                        <fmt:formatNumber value="${tour.price}" type="currency" currencySymbol=""/>
                    </td>
                    <td>
                        <button><a style="text-decoration: none" href="booking-tour?id=${tour.id}">Đặt tour</a></button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
