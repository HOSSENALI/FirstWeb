<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

	<div class="col-md-6 col-md-offset-3">
		<table class="table table-striped" border="1">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Notice</th>
			</tr>
			<tr>

				<c:forEach var="notice" items="${notices}">
					<tr>
						<td><c:out value="${notice.id}"></c:out></td>
						<td><c:out value="${notice.name}"></c:out></td>
						<td><c:out value="${notice.email}"></c:out></td>
						<td><c:out value="${notice.text}"></c:out></td>
					</tr>

				</c:forEach>
			</tr>
		</table>
	</div>
