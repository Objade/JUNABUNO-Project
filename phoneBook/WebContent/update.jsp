<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<h3>전화번호 수정</h3>

	<table>
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>	
				<th>수정</th>		
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
					<td><a href="<%=cpath %>/update_action.jsp?idx=${phone.idx }"><button>수정</button></a></td>
				</tr>		
		
			<% } %>
		
		</tbody>
	
	</table>


</section>


</body>
</html>