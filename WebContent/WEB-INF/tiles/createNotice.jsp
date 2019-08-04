<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="hossen"
	uri="http://www.springframework.org/tags/form"%>


	<div class="container">
		<hossen:form action="${pageContext.request.contextPath}/docreate"
			method="post" class="form-horizontal" commandName="notice">

			<fieldset>

				<!-- Form Name -->
				<legend>Form Name</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="name">Name</label>
					<div class="col-md-4">
						<hossen:input id="name" path="name" name="name" type="text"
							placeholder="enter name" class="form-control input-md" />
						<hossen:errors path="name" cssClass="alert-danger"></hossen:errors>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="email">Email</label>
					<div class="col-md-4">
						<hossen:input id="email" path="email" name="email" type="text"
							placeholder="enter email" class="form-control input-md" />
						<hossen:errors path="email" cssClass="alert-danger"></hossen:errors>
					</div>
				</div>

				<!-- Textarea -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="text">Text</label>
					<div class="col-md-4">
						<hossen:textarea class="form-control" id="text" path="text"
							name="text"></hossen:textarea>
						<hossen:errors path="text" cssClass="alert-danger"></hossen:errors>
					</div>
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-danger">Create
							Notice</button>
					</div>
				</div>

			</fieldset>

		</hossen:form>
<p>
<a href="<c:url value='/newaccount'/>">Create Account</a>
</p>

	</div>
