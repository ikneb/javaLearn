<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${account.certificates.size() != 0}">
<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-certificate" aria-hidden="true"></i> Certificates
		</h3>
		<p class="panel-title" style="text-align: right;">
			<a href="#" class="navbar-link" style="font-size: 12px;">Edit</a>
		</p>
	</div>
	<div class="panel-body">
		<p class="center">
		<c:forEach var="certificat" items="${account.certificates}">
			<img src="${certificat.smallUrl}">
		    </c:forEach>
			
		</p>
	</div>
</div>
</c:if>