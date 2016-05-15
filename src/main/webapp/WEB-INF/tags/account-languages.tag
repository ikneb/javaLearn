<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${account.languages.size() != 0}">

	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="fa fa-language" aria-hidden="true"></i> Foreign languages
			</h3>
			<h3 class="panel-title" style="text-align: right;">
				<a href="#" class="navbar-link" style="font-size: 12px;">Edit</a>
			</h3>
		</div>
		<div class="panel-body">
			<c:forEach var="language" items="${account.languages}">
				<strong>${language.name}:</strong> ${language.level}(<em>${language.type}</em>)<br>
		    </c:forEach>
		</div>
	</div>


</c:if>