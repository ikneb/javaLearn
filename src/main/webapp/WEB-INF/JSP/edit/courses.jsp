<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>


<div class="container">
	<div class="tab-content brd">
		<h3 class="center">Курсы повышения квалификации</h3>
		<hr>
		<form:form action="/edit/courses" method="post" commandName="courseForm">
			<c:forEach var="course" items="${courseForm.items}" varStatus="status">
				<resume:edit-cource-block index="${status.index}" course="${course}" />
			</c:forEach>
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

