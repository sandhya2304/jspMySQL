

<%@page import="dao.UserDao"%>
<%@page import="bean.User"%>
<jsp:useBean id="obj" class="bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>



<%

int i =UserDao.deleteUser(obj);
if(i>0)
{
	response.sendRedirect("viewUsers.jsp");
}else
{
	out.print("wrong");
	response.sendRedirect("viewUsers.jsp");
}

%>