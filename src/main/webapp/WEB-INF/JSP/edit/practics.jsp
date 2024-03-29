<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container">
	<div id="content">
		<resume:edit-header selected="practics"/>
		<div class="tab-content brd">



			<div class="panel panel-default">
				<h3 class="center">Практический оппыт</h3>
				<hr>
				<form:form action="/edit/practics" method="post" commandName="practicForm">
				<sec:csrfInput />
				<div id="ui-block-container">
					<c:forEach var="practic" items="${practicForm.items}" varStatus="status">
						<resume:edit-practic-block index="${status.index}" practic="${practic}" />
						<br>
					</c:forEach>
					</div>

					<hr>
					<c:if test="${practicForm.items[0].position == null}">
						<resume:edit-practic-empty-block />
					</c:if>
					<div id="addEnumBlock" style="display: none;">
						<resume:edit-practic-empty-block />
					</div>
					<div style="text-align: center;">
						<a href="javascript:resume.ui.addBlock();"> + Добавить еще</a>
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

	</div>
</div>
<script id="ui-block-template" type="text/x-handlebars-template">
	<resume:edit-practic-block index="{{blockIndex}}" />
</script>

