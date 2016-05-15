<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${account.courses.size() != 0}">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="fa fa-book" aria-hidden="true"></i> Cources
			</h3>
			<p class="panel-title" style="text-align: right;">
				<a href="#" class="navbar-link" style="font-size: 12px;">Edit</a>
			</p>
		</div>
		<div class="panel-body">
			<ul class="timeline">
				<c:forEach var="course" items="${account.courses}">
					<li>
						<div class="timeline-badge info">
							<i class="fa fa-book" aria-hidden="true"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">${course.name} at ${course.school}</h4>
							</div>
							<div class="timeline-body">
								<p>
									<small class="text-muted"><i class="glyphicon glyphicon-time"></i>${course.finishDate}
									<c:if test="${course.finishDate == null}">
									<strong class="label label-danger">Not finished yet</strong>
									</c:if>
									</small>
								</p>

							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</c:if>