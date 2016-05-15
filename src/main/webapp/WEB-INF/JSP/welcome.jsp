<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">

	<div id="content">
		<c:forEach var="account" items="${accounts.content}">

			<div class="tab-content brd">

				<div class="row">
					<div class="col-lg-2  col-sm-2">
						<img src=" ${account.smallPhoto}">
					</div>
					<div class="col-lg-8  col-sm-8">
						<h4 class="text-canter">
							<strong style="color: blue;"><a  href="${account.uid}">${account.fullName}</a> ${account.age}</strong> <font size="3">${account.city},${account.country}</font>
						</h4>

						<h4>
							<strong> ${account.objective}</strong>
						</h4>
						<blockquote>${account.summary}</blockquote>
					</div>
					<div class="col-lg-2  col-sm-2">
						
						<a class="btn btn-primary" href="${account.uid}" role="button">Детали</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>