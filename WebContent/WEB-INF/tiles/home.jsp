<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>


	<p>
		<a href="${pageContext.request.contextPath}/notices">Show Notice</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/createNotice"> Create
			Notice</a>
	</p>

	<sec:authorize access="!isAuthenticated()">
		<p>
			<a href="<c:url value="/login"></c:url>">Log In </a>
		</p>
	</sec:authorize>

	<sec:authorize access="isAuthenticated()">
		<p>
			<a href="<c:url value='/j_spring_security_logout'></c:url>">Log
				Out </a>
		</p>
	</sec:authorize>

	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<p>
			<a href="<c:url value="/admin"></c:url>">Admin Page </a>
		</p>
	</sec:authorize>
