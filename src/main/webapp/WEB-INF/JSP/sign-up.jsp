<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="container">
	<div id="content" style="padding-left: 200px; padding-right: 200px">
		<div class="panel panel-info small-center-block">
			<div class="panel-heading">
				<h3 class="panel-title">
					<i class="fa fa-sign-in"></i> Укажите ваши персональные данные
				</h3>
			</div>


			<div class="panel panel">

				<div class="panel-body">

					<h5>Имейте ввиду, что введенная вами имя и фамилия не смогут быть изменены в будущем! Поэтому предоставляйте реальные имя и фамилию!</h5>

					<hr>
					<form:form action="/sign-up" method="post" commandName="signUpForm">
						<div class="form-group">
							<label for="firstName" class="control-label col-xs-2">Имя</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" id="firstName" name="firstName" value="${signUpForm.firstName}">
							</div>
							<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
								<form:errors path="firstName" cssClass="alert alert-danger" element="div" />
							</div>
						</div>
						<br>
						<br>
						<br>
						<div class="form-group">
							<label for="lastName" class="control-label col-xs-2">Фамилия</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" id="lastName" name="lastName" value="${signUpForm.lastName}">
							</div>
							<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
								<form:errors path="lastName" cssClass="alert alert-danger" element="div" />
							</div>
						</div>
						<br>
						<br>
						<div class="form-group">
							<label for="password" class="control-label col-xs-2">Пароль</label>
							<div class="col-xs-10">
								<input type="password" class="form-control" id="password" name="password" value="${signUpForm.password}">
							</div>
							<%-- <div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
								<form:errors path="password" cssClass="alert alert-danger" element="div" />
							</div> --%>
						</div>
						<br>
						<br>
						<div class="form-group">
							<label for="confirmPassword" class="control-label col-xs-2">Подтвержддение пароля</label>
							<div class="col-xs-10">
								<input type="password" class="form-control" name="confirmPassword" value="${signUpForm.confirmPassword}" id="confirmPassword">
							</div>
							<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
								<form:errors path="confirmPassword" cssClass="alert alert-danger" element="div" />
							</div>
						</div>
						<br>
						<br>
						<div class="form-group">
							<div class="col-xs-offset-2 col-xs-10">
								<div class="checkbox">
									<label><input type="checkbox"> Запомнить</label>
								</div>
							</div>
						</div>
						<br>
						<div class="form-group">
							<div class="form-group text-center">
								<button type="submit" class="btn btn-primary">Войти</button>
								<a href="/fbLogin" class="btn btn-warning">Войти через Facebook</a>
							</div>
							<div class="form-group"></div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>