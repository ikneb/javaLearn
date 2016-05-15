<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${account.practics.size() != 0}">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="fa fa-briefcase" aria-hidden="true"></i> Practic Experience
			</h3>
			<p class="panel-title" style="text-align: right;">
				<a href="#" class="navbar-link" style="font-size: 12px;">Edit</a>
			</p>
		</div>
		<div class="panel-body">
			<ul class="timeline">
				
				<c:forEach var="practic" items="${account.practics}">
					<li class="timeline-inverted">
						<div class="timeline-badge warning">
							<i class="fa fa-briefcase" aria-hidden="true"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">${practic.position}</h4>
								<p>
									<small class="text-muted"><i class="glyphicon glyphicon-time"></i>${practic.beginDate} - ${practic.finishDate}
									
									<c:if test="${practic.finishDate == null}">
									<strong class="label label-danger">Current</strong>
									</c:if>
									
									</small>
								</p>
							</div>
							<div class="timeline-body">
								<p>
									<strong>Responsibilities icluded:</strong> ${practic.responsibilities}<br> 
									<c:if test="${practic.demo != null}">
									<strong>Demo:</strong>${practic.demo} 
									</c:if>
									<c:if test="${practic.src != null}">
									<strong>Sourse code:</strong> ${practic.src}
									</c:if>
								</p>
							</div>
						</div>
					</li>
				</c:forEach>
				
			</ul>
		</div>
	</div>
</c:if>