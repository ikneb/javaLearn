<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%-- <sec:authentication property="principal" var="CURRENT_PROFILE"/> --%>

<div class="container">
<div class="panel panel-info">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fa fa-thumbs-o-up"></i> Регистрация успешна
		</h3>
	</div>
	<div class="panel-body">
		<p>После завершения регистрации Ваш профиль будет доступен по ссылке: <a href="http://54.93.196.27/${accountForm.account.uid }">http://54.93.196.27/${accountForm.account.uid }</a></p>
		<p>Ваш UID: <strong>${accountForm.account.uid }</strong>. Используйте данный UID, чтобы войти в Ваш личный кабинет</p>
		<hr/>
		<div class="row">
			<div class="col-xs-12 text-center">
				<a href="/edit/edit" class="btn btn-primary">Завершить регистрацию</a>
			</div>
		</div>
	</div>
</div>
</div>