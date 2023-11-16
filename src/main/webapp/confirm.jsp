<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 11/13/2023
  Time: 11:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>Đặt tour ${booking.tour.description} thành công</h1>
  <h2>Thông tin tour</h2>
  <div><b>Số ngày: </b> ${booking.tour.days}</div>
  <div><b>Phương tiện: </b> ${booking.tour.transportation}</div>
  <div><b>Lịch khởi hành: </b> ${booking.tour.departureSchedule}</div>
  <h2>Thông tin khách hàng</h2>
  <div><b>Họ tên: </b> ${booking.customer.name}</div>
  <div><b>Địa chỉ: </b> ${booking.customer.address}</div>
  <div><b>Email: </b> ${booking.customer.email}</div>
  <div><b>Phone: </b> ${booking.customer.phone}</div>
  <h2>Thông tin chuyến đi</h2>
  <div><b>Số người lớn: </b> ${booking.noAdults}</div>
  <div><b>Số trẻ em: </b> ${booking.noChildren}</div>
  <br>
  <button><a style="text-decoration: none" href="list-tours">Xác nhận</a></button>

</body>
</html>
