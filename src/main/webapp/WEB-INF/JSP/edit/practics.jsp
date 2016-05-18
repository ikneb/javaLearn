<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>



<div class="container">
	<div class="tab-content brd">
		<h3 class="center">Практический оппыт</h3>
		<hr>
		<form:form action="/edit/practics" method="post" commandName="practicForm">
			<c:forEach var="practic" items="${practicForm.items}" varStatus="status">
				<resume:edit-practic-block index="${status.index}" practic="${practic}" />
				<br>
			</c:forEach>

			<hr>
			<div style="text-align: center;">
				<a href="#" class="navbar-link"> + Добавить еще</a>
			</div>
			<hr>
			<div class="container text">
				<div class="col-xs-12 text-center">
					<input type="submit" class="btn btn-primary" value="Сохранить">
				</div>
			</div>
		</form:form>
	</div>
</div>
