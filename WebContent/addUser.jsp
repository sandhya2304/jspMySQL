<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<a href="viewUsers.jsp">View User</a><br />
	</div>
	
	<hr>
	
	<div align="center">
		<form action="addUserDao.jsp" method="post">
			<table border="1">
				<tr>
					<td>id:</td>
					<td><input type="text" name="id" />
				</tr>
				<tr>
					<td>name:</td>
					<td><input type="text" name="name" />
				</tr>
				<tr>
					<td>email:</td>
					<td><input type="text" name="email" />
				</tr>
				<tr>
					<td>password:</td>
					<td><input type="text" name="password" />
				</tr>
				<tr>
					<td>sex:</td>
					<td><input type="radio" name="sex" value="male" /> Male <input
						type="radio" name="sex" value="female" /> Female</td>
				</tr>
				<tr>
					<td>country:</td>
					<td><select name="country" style="width: 155px">
							<option>India</option>
							<option>Pakistan</option>
							<option>Afghanistan</option>
							<option>Berma</option>
							<option>Other</option>
					</select> </select></td>
				</tr>
				 <tr> 
					<td><input type="submit" value="AddUser" /></td>
			     </tr>
				
			</table>
             
		</form>
	</div>
</body>
</html>