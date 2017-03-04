<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="service.TeamService"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>2017 APP移動應用創新賽</title>
<script type="text/javascript">
	function same() {
		signUpForm.action = "webapi/team/signUp";
		signUpForm.submit();
	}
	function different() {
		alert("驗證碼錯誤");
		location.href = "signUp.jsp";
	}
</script>
<title>2017 APP移動應用創新賽</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String Leader = request.getParameter("Leader");
		String Phone = request.getParameter("Phone");
		String Email = request.getParameter("Email");
		System.out.println(Leader + ", " + Phone + ", " + Email);
	%>
	<form id="signUpForm" name="signUpForm" method="post">
		<input type="hidden" id="Leader" value=<%=Leader%> name="Leader">
		<input type="hidden" id="Phone" value=<%=Phone%> name="Phone">
		<input type="hidden" id="Email" value=<%=Email%> name="Email">
	</form>
	<%
		String rand = session.getAttribute("code").toString();
		String input = request.getParameter("code");
		if (rand.equals(input)) {
			out.println("<script language='javascript'>same();</script>");
		} else {
			out.print("<script language='javascript'>different();</script>");
		}
	%>

</body>
</html>