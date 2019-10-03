
<%@page import="dao.UserDao"%>

<jsp:useBean id="u" class="bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>



<%
int i = UserDao.insertUser(u);
if(i>0)
{
	response.sendRedirect("viewUsers.jsp");
}else
{
	out.print("Worng username/password");
	response.sendRedirect("addUser.jsp");
}

%>