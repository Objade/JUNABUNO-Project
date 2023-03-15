<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<h3>전화번호 목록</h3>

	<table>
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>			
			</tr>	
		</thead>
	
		<tbody>
			<%	
				hd.setDummy();
				for(Phone ph : hd.getList()) {
				
				pageContext.setAttribute("phone", ph);
				
			%>
			
				<tr>
					<td><%=ph.getName() %></td>
					<td><%=ph.getPhoneNum() %></td>
				</tr>		
		
			<% } %>
		
		</tbody>
	
	</table>


</section>


</body>
</html>