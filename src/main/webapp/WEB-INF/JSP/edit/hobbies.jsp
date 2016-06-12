<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" 	   	uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" 	uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" 	uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="resume" 	tagdir="/WEB-INF/tags"%>



<div class="container">
	<div id="content">
		<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
			<li><a href="/edit/edit">Basis</a></li>
			<li><a href="/edit/contacts">Contacts</a></li>
			<li><a href="/edit/skills">Technical skills</a></li>
			<li><a href="/edit/practics">Practic</a></li>
			<li><a href="/edit/certificates">Certificates</a></li>
			<li><a href="/edit/courses">Сourses</a></li>
			<li><a href="/edit/education">Education</a></li>
			<li><a href="/edit/languages">Languages</a></li>
			<li class="active"><a href="/edit/hobbies">Hobbies</a></li>
			<li><a href="/edit/info">Additional Info</a></li>
		</ul>
		<div id="hobbyContainer" class="panel panel-default" data-csrf-value="${_csrf.token}">
			<div class="panel-body">
				<h4 class="data-header">Некоторые работодатели уделяют внимание на хобби кандидата</h4>
				<h6 class="text-center help-block">Выберите не более 5 пунктов!</h6>
				<hr />
				<div id="ui-block-container" class="row" data-max-hobbies="${maxHobbies}">
					<c:forEach var="hobby" items="${hobbies }">
						<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
							<button type="button" class="btn btn-block btn-default hobby-btn ${hobby.selected ? 'active' : '' }" data-hobby="${hobby.name }"
								data-toggle="button" aria-pressed="false">
								<i class="fa hobby hobby-${hobby.cssClassName }"></i>${hobby.name }
							</button>
							<br>
						</div>
					</c:forEach>
				</div>
				<hr />
				<div id="errorAlert" class="alert alert-danger" role="alert" style="display: none;">
					<button type="button" class="close" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<strong>Ошибка сохранения!</strong> Выберите не более ${maxHobbies} пунктов!
				</div>
				<div class="row">
					<div class="col-xs-12 text-center">
						<a href="javascript:resume.hobbies.save();" class="btn btn-primary">Сохранить</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

