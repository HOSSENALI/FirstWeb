<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
<div class="container">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="#">NOTICES</a>
</div>
<div id="navbar" class="collapse navbar-collapse">
<ul class="nav navbar-nav">
<li class="active"><a href="<c:url value='/' />">Home</a></li>

</ul>

<ul class="nav navbar-nav navbar-right">

<sec:authorize access="!isAuthenticated()">
		<li>
			<a href="<c:url value="/login"></c:url>">Log In </a>
		</li>
	</sec:authorize>

	<sec:authorize access="isAuthenticated()">
		<li>
			<a href="<c:url value='/j_spring_security_logout'></c:url>">Log
				Out </a>
		</li>
	</sec:authorize>
</ul>
</div>
</div>
	
</nav>