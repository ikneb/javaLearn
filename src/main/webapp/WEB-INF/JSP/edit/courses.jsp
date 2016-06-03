<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container">
	<div id="content">
		<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
			<li><a href="/edit/edit" >Basis</a></li>
			<li><a href="/edit/contacts" >Contacts</a></li>
			<li><a href="#/edit/skills" >Technical skills</a></li>
			<li><a href="/edit/practics" >Practic</a></li>
			<li><a href="/edit/certificates" >Certificates</a></li>
			<li class="active"><a href="/edit/courses" >Сourses</a></li>
			<li><a href="/edit/education" >Education</a></li>
			<li><a href="/edit/languages">Languages</a></li>
			<li><a href="/edit/hobbies" >Hobbies</a></li>
			<li><a href="/edit/info" >Additional Info</a></li>
		</ul>
		<div class="tab-content brd">



			<div class="panel panel-default">
				<h3 class="center">Курсы повышения квалификации</h3>
				<hr>
				<form:form action="/edit/courses" method="post" commandName="courseForm">
					<c:forEach var="course" items="${courseForm.items}" varStatus="status">
						<resume:edit-cource-block index="${status.index}" course="${course}" />
					</c:forEach>
					<c:if test="${courseForm.items[0].name == null}">
					<resume:edit-cource-empty-block/>
					 </c:if>
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

