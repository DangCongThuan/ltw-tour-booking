<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 11/13/2023
  Time: 10:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>${tour.description}</h2>
    <p>
        <strong>Số ngày: </strong>${tour.days}.
        <strong>Phương tiện: </strong> ${tour.transportation}
        <strong>Lịch khởi hành: </strong> ${tour.departureSchedule}
    </p>
    <h1>Chương trình chi tiết</h1>

    ${tour.details}
    <br>
    <div>
        <button><a style="text-decoration: none" href="booking-tour?id=${tour.id}">Đặt tour</a></button>
        <a style="float: right" href="list-tours">CHƯƠNG TRÌNH TOUR</a>
    </div>
</body>
</html>
