<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="service.TeamService" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>2017 APP移動應用創新賽</title>
</head>
<body>

<%
	String Email = request.getParameter("InputEmail");
	String Password = request.getParameter("InputPassworc");
	
	TeamService teamService = new TeamService();
	
	teamService.login(Email, Password);
%>

</body>
</html>