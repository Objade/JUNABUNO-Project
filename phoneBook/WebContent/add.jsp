<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<section>
	<h3>전화번호 추가</h3>
	
	<%
			if(request.getMethod().equals("GET")) {
		%>

	<form method="POST">
		<table>

			<tr>
				<th>이름</th>
				<td><input type="text" name="name" placeholder="이름 입력" required></td>
			</tr>	
	
			<tr>
				<th>전화번호 <br>(형식 : 000-0000-0000)</th>	
				<td><input type="tel" name="phoneNum" 
					pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" 
					placeholder="전화번호 입력" required>
				</td>
			</tr>		
		
		
	
	</table>
	
	<div class="input">
		<input type="submit" value="추가">
	</div>
	
	</form>
	<%
		}
	%>
	
	<%
			if(request.getMethod().equals("POST")) {
		%>
	
	<jsp:useBean id="user" class="phoneBook.Phone" scope="page" />
	<jsp:setProperty property="*" name="user" />
	
	${handler.insert(user) }
	
	
	<% 
		String url = "list.jsp";
		response.sendRedirect(url);

	
	
	} %>

</section>


</body>
</html>