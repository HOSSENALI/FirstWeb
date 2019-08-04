<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="hossen"
	uri="http://www.springframework.org/tags/form"%>
	
<script type="text/javascript">
$(document).ready(function(){
	$(j_username).focus();
});
</script>

	<div class="container">
		<form
			action="${pageContext.request.contextPath}/j_spring_security_check"
			method="post" class="form-horizontal">

			<fieldset>

				<!-- Form Name -->
				<legend>Login</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="j_name">Username:
					</label>
					<div class="col-md-4">
						<input id="j_name" name="j_username" type="text"
							placeholder="enter username" class="form-control input-md">

					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="j_password">Password:</label>
					<div class="col-md-4">
						<input id="j_password" name="j_password" type="password"
							placeholder="enter password" class="form-control input-md">

					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="j_password">Remember Me</label>
					
						<input id="_spring_security_remember_me" name="_spring_security_remember_me" type="checkbox"
							 checked="checked" type="checkbox">

					
				</div>
				<div class="alert-danger">
					<c:if test="${param.error!=null }">
				Incorrect Username or Password
				</c:if>
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-danger">Login</button>
					</div>
				</div>

			</fieldset>

		</form>

<h2 class="col-md-6 col-md-offset-3"><a href="${pageContext.request.contextPath}/newaccount">create account</a></h2>
	</div>
