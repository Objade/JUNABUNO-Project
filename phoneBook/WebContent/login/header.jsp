<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	String cpath = request.getContextPath();

	MemberHandler memberHandler = (MemberHandler)application.getAttribute("memberHandler");
	if(memberHandler == null) {
		memberHandler = new MemberHandler();
		application.setAttribute("memberHandler", memberHandler);
	}
	
	


%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>Login</h3>

<ul>
	<li><a href="${cpath }/login/${empty login ? 'login.jsp' : 'logout.jsp' }">
		${empty login ? 'Login' : 'Logout' }
	</a></li>
	<li><a href="${cpath }/login/join.jsp">Join us</a></li>
	
	
	
</ul>


</body>
</html>