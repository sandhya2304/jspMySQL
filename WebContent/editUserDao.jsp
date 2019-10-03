
<%@page import="dao.UserDao"%>
<jsp:useBean id="obj" class="bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<%

int i = UserDao.updateUser(obj);
if(i>0)
{
	response.sendRedirect("viewUsers.jsp");
}else{
	response.sendRedirect("editUser.jsp");
}


%>