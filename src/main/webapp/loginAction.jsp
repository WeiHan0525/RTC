<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="service.TeamService" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>2017 APP移動應用創新賽</title>
<script type="text/javascript">
	function loginfalse() {
		alert("帳號或密碼錯誤");
		location.href = "login.jsp";
	}
</script>
</head>
<body>

<%
	String Email = request.getParameter("InputEmail");
	String Password = request.getParameter("InputPassword");
	boolean valid;
	
	TeamService teamService = new TeamService();
	
	valid = teamService.isValidTeam(Email, Password);
	
	if(valid){
		session.setAttribute("email", Email);
		response.sendRedirect("teamSystem.jsp");
	}else{
		out.print("<script language='javascript'>loginfalse();</script>");
	}
%>

</body>
</html>