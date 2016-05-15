<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${account.skills.size() != 0}">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="fa fa-code" aria-hidden="true"></i> Technical skills
			</h3>
			<p class="panel-title" style="text-align: right;">
				<a href="/edit/skills" class="navbar-link" style="font-size: 12px;">Edit</a>
			</p>
		</div>
		<div class="panel-body">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Category</th>
						<th>Frameworks and technologies</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="skill" items="${account.skills}">
					<tr>
						<td>${skill.category}</td>
						<td>${skill.value}</td>
					</tr>
					</c:forEach>
					

				</tbody>
			</table>
		</div>
	</div>
</c:if>