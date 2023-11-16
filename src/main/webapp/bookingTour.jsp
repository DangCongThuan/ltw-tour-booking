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
  <style>
    form {
      margin: auto;
    }
  </style>
</head>
<body>
  <form action="" method="post">
    <input type="number" name="tourId" hidden value="${tour.id}">
  <span>Đặt tour: <b>${tour.description}</b> ${tour.days} </span><br>
  <div>
    <table>
      <thead>
      <tr>
        <th style="width: 50%"></th>
        <th style="width: 50%"></th>
      </tr>
      </thead>
      <tbody>
        <tr>
          <td><h3>Thông tin khách hàng</h3></td>
          <td></td>
        </tr>
      <tr>
        <td><label for="name">Họ tên: (*)</label></td>
        <td> <input type="text" name="name" id="name" required></td>
      </tr>
      <tr>
        <td><label for="address">Địa chỉ</label></td>
        <td> <input type="text" name="address" id="address"></td>
      </tr>
        <tr>
          <td><label for="email">Email: (*)</label></td>
          <td><input type="email" name="email" id="email" required></td>
        </tr>
        <tr>
          <td><label for="phone">Phone:</label></td>
          <td><input type="number" name="phone" id="phone"></td>
        </tr>
      <tr>
        <td><h3>Thông tin chuyến đi</h3></td>
        <td></td>
      </tr>
        <tr>
          <td><label for="departureDate">Ngày khởi hành: (*)</label></td>
          <td> <input type="date" name="departureDate" id="departureDate" required></td>
        </tr>
        <tr>
          <td><label for="noAdults">Số người lớn: (*)</label></td>
          <td><input value="1" type="number" name="noAdults" id="noAdults" required></td>
        </tr>
        <tr>
          <td><label for="noChildren">Số trẻ em: </label></td>
          <td><input value="0" type="number" name="noChildren" id="noChildren"></td>
        </tr>
      </tbody>
    </table>
   <br>
  </div>
    <button type="submit">Gửi</button>
    <button><a style="text-decoration: none" href="list-tours">Hủy</a></button>
  </form>
</body>
</html>
