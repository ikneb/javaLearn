<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="account" items="${accounts }">
	<div class="panel panel-default account-item">
		<div class="media panel-body">
			<div class="media-left media-top">
				<a href="/${account.uid }"><img alt="${account.fullName }" src="${account.smallPhoto }" class="photo"></a>
			</div>
			<div class="media-body search-result-item">
				<a href="/${account.uid }" class="btn btn-primary pull-right">Детали</a>
				<h4 class="media-heading">
					<a href="/${account.uid }"> ${account.fullName }, ${account.age }</a>
				</h4>
				<strong>${account.objective }</strong>
				<p>${account.city },${account.country }</p>
				<blockquote>
					<small>${account.summary }</small>
				</blockquote>
			</div>
		</div>
	</div>
</c:forEach> 