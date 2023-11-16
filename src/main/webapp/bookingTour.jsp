<%--
  Created by IntelliJ IDEA.
  User: Pc
  Date: 11/13/2023
  Time: 10:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form action="" method="post">
    <input type="number" name="tourId" hidden value="${tour.id}">
  <span>Đặt tour: <b>${tour.description}</b> ${tour.days} </span><br>
  <div>
    <h3>Thông tin khách hàng</h3>
    <div>
      <label for="name">Họ tên: (*)</label>
      <input type="text" name="name" id="name" required>
    </div>
    <div>
      <label for="address">Địa chỉ</label>
      <input type="text" name="address" id="address">
    </div>
    <div>
      <label for="email">Email: (*)</label>
      <input type="email" name="email" id="email" required>
    </div>
    <div>
      <label for="phone">Phone:</label>
      <input type="number" name="phone" id="phone">
    </div>
    <br>
    <h3>Thông tin chuyến đi</h3>
    <div>
      <label for="departureDate">Ngày khởi hành: (*)</label>
      <input type="date" name="departureDate" id="departureDate" required>
    </div>
    <div>
      <label for="noAdults">Số người lớn: (*)</label>
      <input value="1" type="number" name="noAdults" id="noAdults" required>
    </div>
    <div>
      <label for="noChildren">Số trẻ em: </label>
      <input value="0" type="number" name="noChildren" id="noChildren">
    </div>
    <br>
  </div>
    <button type="submit">Gửi</button>
    <button><a style="text-decoration: none" href="list-tours">Hủy</a></button>
  </form>
</body>
</html>
