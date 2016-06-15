<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.joshuait.dao.UsersDao"%>
<%@page import="com.joshuait.entity.Users"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>#</td><td>登录名称</td><td>昵称</td><td>邮箱</td>
	</tr>
	<% 
		UsersDao.init();
		List<Users> userList = UsersDao.Search(new Users());
		for(Users u:userList){
	%>
	<tr>
	<td><%= u.getId() %></td><td><%=u.getUserLogin() %></td><td><%=u.getUserEmail() %></td><td></td>
	</tr>
	<%} %>
</table>
</body>
</html>