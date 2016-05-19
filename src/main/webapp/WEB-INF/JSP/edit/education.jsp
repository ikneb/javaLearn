<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container">
	<div id="content">
		<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
			<li><a href="/edit/edit" >Basis</a></li>
			<li><a href="/edit/contacts" >Contacts</a></li>
			<li><a href="/edit/skills" >Technical skills</a></li>
			<li><a href="/edit/practics" >Practic</a></li>
			<li><a href="/edit/certificates" >Certificates</a></li>
			<li><a href="/edit/courses" >Сourses</a></li>
			<li class="active"><a href="/edit/education" >Education</a></li>
			<li><a href="/edit/languages" >Languages</a></li>
			<li><a href="/edit/hobbies" >Hobbies</a></li>
			<li><a href="/edit/info" >Additional Info</a></li>
		</ul>
		<div class="tab-content brd">



			<div class="panel panel-default">
				<h3 class="center">Образование</h3>
				<hr>
				<form:form action="/edit/education" method="post" commandName="educationForm">
					<c:forEach var="education" items="${educationForm.items}" varStatus="status">
						<resume:edit-education-block index="${status.index}" education="${education}" />
					</c:forEach>
					<hr>
					<div class="add">
						<a href="#"> + Добавить еще</a>
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