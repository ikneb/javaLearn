<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="container">
	<div id="content">
		<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
			<li><a href="/edit/edit" >Basis</a></li>
			<li><a href="/edit/contacts" >Contacts</a></li>
			<li><a href="/edit/skills">Technical skills</a></li>
			<li><a href="/edit/practics">Practic</a></li>
			<li><a href="/edit/certificates">Certificates</a></li>
			<li><a href="/edit/courses">Сourses</a></li>
			<li><a href="/edit/education">Education</a></li>
			<li><a href="/edit/languages">Languages</a></li>
			<li class="active"><a href="/edit/hobbies">Hobbies</a></li>
			<li><a href="/edit/info">Additional Info</a></li>
		</ul>
		<div class="tab-content brd">
			<div class="panel panel-default">
					<h3 class="center">Некоторые работодатели уделяют внимание на хобби кандидата</h3>
					<p class="center">Выберите не более пяти пунктов</p>
					<hr>
					<form:form action="/edit/hobbies" method="post" commandName="hobbyForm">
						<div class="row">
						<c:forEach var="hobbyName" items="${hobbyName}">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}">${hobbyName.name == hobby.name ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">
									<i class="fa fa-bicycle" aria-hidden="true"></i> ${hobbyName.name}
								</button>
								<br>
							</div>
							</c:forEach>
							
						</div>
						<hr>
						<div class="row">
							<div class="col-xs-12 text-center">
								<input type="submit" class="btn btn-primary" value="Сохранить">
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>

