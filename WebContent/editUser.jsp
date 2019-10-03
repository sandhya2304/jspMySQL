


<%@page import="dao.UserDao"%>
<%@page import="bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	String id=request.getParameter("id");
	User user =UserDao.findById(Integer.parseInt(id));
	%>
	
	
	<hr>
	
	<div align="center">
		<form action="editUserDao.jsp" method="post">
			<table border="1">
				<tr>
					<td>id:</td>
					<td><input type="text" name="id" value="<%=user.getId()%>" />
				</tr>
				<tr>
					<td>name:</td>
					<td><input type="text" name="name" value="<%=user.getName() %>" />
				</tr>
				<tr>
					<td>email:</td>
					<td><input type="text" name="email" value="<%=user.getEmail() %>" />
				</tr>
				<tr>
					<td>password:</td>
					<td><input type="text" name="password" value="<%=user.getPassword()%>"/>
				</tr>
				<tr>
					<td>sex:</td>
					<td><input type="radio" name="sex" value="<%=user.getSex() %>"  /> Male <input
						type="radio" name="sex" value="<%=user.getSex() %>" /> Female</td>
				</tr>
				<tr>
					<td>country:</td>
					<td><select name="country" style="width: 155px" >
							<option value="<%=user.getCountry() %>"><%=user.getCountry() %></option>
					</select></td>
				</tr>
				 <tr> 
					<td><input type="submit" value="AddUser" /></td>
			     </tr>
				
			</table>
             
		</form>
	</div>
</body>
</html>