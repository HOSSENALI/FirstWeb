<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="hossen"
	uri="http://www.springframework.org/tags/form"%>


	<div class="container">
		<hossen:form action="${pageContext.request.contextPath}/createaccount"
			method="post" class="form-horizontal" commandName="user">

			<fieldset>

				<!-- Form Name -->
				<legend>Create User</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="username">User
						Name</label>
					<div class="col-md-4">
						<hossen:input id="username" path="username" name="username"
							type="text" placeholder="enter name"
							class="form-control input-md" />
						<hossen:errors path="username" cssClass="alert-danger"></hossen:errors>
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
				<!-- password input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="password">Password</label>
					<div class="col-md-4">
						<hossen:input id="password" path="password" name="password"
							type="text" placeholder="password" class="form-control input-md" />
						<hossen:errors path="password" cssClass="alert-danger"></hossen:errors>
					</div>
				</div>

				<!-- ConfirmPassword input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="email">Password</label>
					<div class="col-md-4">
						<input id="confirmpassword" name="confirmpassword" type="text"
							placeholder="password" class="form-control input-md" />

					</div>
				</div>
				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-danger">Create
							User</button>
					</div>
				</div>
			</fieldset>
		</hossen:form>
	</div>

	<script type="text/javascript">
		var password = document.getElementById("password"), confirm_password = document
				.getElementById("confirmpassword");

		function validatePassword() {
			if (password.value != confirm_password.value) {
				confirm_password.setCustomValidity("Passwords Don't Match");
			} else {
				confirm_password.setCustomValidity('');
			}
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
	</script>