<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h3 class="col-md-6 col-md-offset-3">Authorized Users Only</h3>
<div class="col-md-6 col-md-offset-3">
		<table class="table table-striped" border="1">
			<tr>
				<th>Username</th>
				<th>Email</th>
				<th>Authority</th>
				<th>Enabled</th>
			</tr>
			<tr>

				<c:forEach var="user" items="${users}">
					<tr>
						<td><c:out value="${user.username}"></c:out></td>
						<td><c:out value="${user.email}"></c:out></td>
						<td><c:out value="${user.authority}"></c:out></td>
						<td><c:out value="${user.enabled}"></c:out></td>
					</tr>

				</c:forEach>
			</tr>
		</table>
	</div>
