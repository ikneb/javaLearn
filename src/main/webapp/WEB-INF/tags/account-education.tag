<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${account.educations.size() != 0}">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="fa fa-graduation-cap" aria-hidden="true"></i> Education
			</h3>
			<p class="panel-title" style="text-align: right;">
				<a href="edit/education" class="navbar-link" style="font-size: 12px;">Edit</a>
			</p>
		</div>
		<div class="panel-body">
			<ul class="timeline">
				
				<c:forEach var="education" items="${account.educations}">
				<li>
					<div class="timeline-badge danger">
						<i class="fa fa-graduation-cap" aria-hidden="true"></i>
					</div>
					<div class="timeline-panel">
						<div class="timeline-heading">
							<h4 class="timeline-title">${education.summary}</h4>
						</div>
						<div class="timeline-body">
							<p>
								<small class="text-muted"><i class="glyphicon glyphicon-time"></i>
								 ${education.beginYear} - ${education.finishYear}
								 <c:if test="${education.finishYear != null}"> <strong class="label label-danger">Finished yet</strong></c:if>
								 <c:if test="${education.finishYear == null}"> <strong class="label label-danger">Current</strong></c:if>
								 </small>
							</p>
							<p>${education.faculty}, ${education.university}</p>
						</div>
					</div>
				</li>
				 </c:forEach>
				
			</ul>
		</div>
	</div>
</c:if>