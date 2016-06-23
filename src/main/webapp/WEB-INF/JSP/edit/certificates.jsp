<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container">
	<resume:edit-header selected="certificates"/>
		<div class="tab-content brd">



			<div class="panel panel-default">

					<h3 class="center">Сертификаты</h3>
					<hr>

					<div style="text-align: center;">

						<c:forEach var="certificat" items="${certificateForm.items}" varStatus="status">
						<input type="hidden" name="items[${index }].id" value="${certificat.id }" /> 
							<div class="frame-certificates">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<br>
								<img src="${certificat.smallUrl}" />
							</div>
						</c:forEach>
					</div>
					<hr>
					<div style="text-align: center;">
						<a data-target="#myModal" data-toggle="modal"> + Добавить еще</a>
					</div>
					<hr>
					<div class="row">
							<div class="col-xs-12 text-center">
								<input type="submit" class="btn btn-primary" value="Сохранить">
							</div>
						</div>
				</div>
			</div>
		</div>



<resume:modal-loader />