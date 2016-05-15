<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${account.objective != null && account.summary != null}">
<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-bullseye" aria-hidden="true"></i> Objective
		</h3>
		<p class="panel-title" style="text-align: right;">
			<a href="#" class="navbar-link" style="font-size: 12px;">Edit</a>
		</p>
	</div>
	<div class="panel-body">
		<h4>${account.objective}</h4>
		<p>
			<strong>Summary of Qualifications:</strong><br>${account.summary}
		</p>
	</div>
</div>

</c:if>