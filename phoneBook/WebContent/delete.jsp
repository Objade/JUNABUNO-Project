<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

<section>
	<h3>전화번호 삭제</h3>

	<table>
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>	
				<th>삭제</th>		
			</tr>	
		</thead>
	
		<tbody>
			<%
				
				for(Phone ph : hd.getList()) {
				
				pageContext.setAttribute("phone", ph);
				
			%>
			
				<tr>
					<td><%=ph.getName() %></td>
					<td><%=ph.getPhoneNum() %></td>
					<td><a href="<%=cpath %>/delete_action.jsp?idx=${phone.idx }"><button>삭제</button></a></td>
				</tr>		
		
			<% } %>
		
		</tbody>
	
	</table>


</section>


</body>
</html>