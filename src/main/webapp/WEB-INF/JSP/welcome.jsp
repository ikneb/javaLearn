<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">

	<div id="content">
	<c:forEach var="acc" items="${accounts.content}">

		<div class="tab-content brd">

			<div class="row">
				<div class="col-lg-4  col-sm-6">
					
					${acc.city}
					
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
</div>