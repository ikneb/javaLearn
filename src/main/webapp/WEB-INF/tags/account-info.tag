<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${account.getInfo() != null}">
<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-exclamation-circle" aria-hidden="true"></i> Additional Info
		</h3>
		<p class="panel-title" style="text-align: right;">
			<a href="#" class="navbar-link" style="font-size: 12px;">Edit</a>
		</p>
	</div>
	<div class="panel-body">${account.getInfo()}</div>
</div>

</c:if>