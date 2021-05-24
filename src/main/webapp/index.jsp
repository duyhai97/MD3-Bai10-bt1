<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Customer" %><%--
  Created by IntelliJ IDEA.
  User: TruongDubai
  Date: 5/24/2021
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  ArrayList<Customer> list = new ArrayList<>();
  list.add(new Customer("hải","07/07","TH","https://img.nhandan.com.vn/Files/Images/2020/07/26/nhat_cay-1595747664059.jpg"));
  list.add(new Customer("thanh","07/07","TH","abc"));
  list.add(new Customer("hà","07/07","TH","abc"));
  list.add(new Customer("long","07/07","TH","abc"));
  request.setAttribute("danhsach", list);
%>

<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
<table border="1px">
  <tr>
    <td>Tên</td>
    <td>Ngày sinh</td>
    <td>Địa chỉ</td>
    <td>Ảnh</td>
  </tr>
  <c:forEach items="${danhsach}" var="customer" >
    <tr>
      <td>${customer.name}</td>
      <td>${customer.dob}</td>
      <td>${customer.address}</td>
      <td>${customer.image}</td>
    </tr>

  </c:forEach>

</table>
  </body>
</html>
