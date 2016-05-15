<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${account.hobbies.size() != 0}">

<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-heart" aria-hidden="true"></i> Hobby
		</h3>
		<h3 class="panel-title" style="text-align: right;">
			<a href="edit/hobbies" class="navbar-link" style="font-size: 12px;">Edit</a>
		</h3>
	</div>
	
	
	<div class="panel-body">
		<table class="table table-bordered">
			<tbody>
			<c:forEach var="hobby" items="${account.hobbies}" >
				<tr>
					<td><i class="fa fa-heart" aria-hidden="true"></i></td>
					<td>${hobby.name}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

</c:if>