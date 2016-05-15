<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container">
	<div class="tab-content brd">

		<h3 class="center">Сертификаты</h3>
		<hr>

		<div style="text-align: center;">

			<c:forEach var="certificat" items="${certificates}" varStatus="status">
				<div class="frame-certificates">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<br>
					<image src="${certificat.smallUrl}" />
				</div>
			</c:forEach>





		</div>
		<hr>
		<div style="text-align: center;">
			<a  data-target="#myModal" data-toggle="modal"> + Добавить еще</a>
		</div>
		<hr>
		<div class="container text">
			<button type="submit" class="btn btn-info">
				<i class="fa fa-folder-open-o" aria-hidden="true"> </i>Save
			</button>
		</div>

	</div>
</div>

<resume:modal-loader />