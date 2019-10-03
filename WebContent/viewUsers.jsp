<%@page import="dao.UserDao"%>
<%@page import="bean.User"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  





<%
List<User> users = UserDao.showAll();
request.setAttribute("users",users);
%>

<div align="center">
<table border="1" >
<tr>
  <th>id:</th><th>name:</th><th>password</th><th>Email:</th><th>sex:</th><th>Country</th><th>Action: </th>
</tr>
<c:forEach items="${users}" var="u" >
<tr>

  <td>${u.getId() }</td>
  <td>${u.getName() } </td>
  <td>${u.getPassword() } </td>
  <td>${u.getEmail() }</td>
  <td>${u.getSex() }</td>
  <td>${u.getCountry() }</td>
  <td><a href="editUser.jsp?id=${u.getId()}">Edit</a>&nbsp;&nbsp;<a href="deleteUser.jsp?id=${u.getId()}">Delete</a>

</tr>
</c:forEach>
</table>

<a href="addUser.jsp">Add Users</a><br/>

</div>