<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="container">
	<div id="content" style="padding-left:200px;padding-right:200px" >
	
		<div class="tab-content brd" style="background-color:#4682B4;">
		<div class="row center" ><h3>Укажите ваши персональные данные</h3></div>
		
			<div class="panel panel-default">
			
				<div class="panel-body">
				
				<h5>Имейте ввиду, что введенная вами имя и фамилия не смогут быть изменены в будущем! Поэтому предоставляйте реальные имя и фамилию!</h5>
				
				<hr>
					<form:form action="/sing-up" method="post" commandName="signUpForm">
						<div class="form-group">
							<label for="firstName" class="control-label col-xs-2">Имя</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" id="firstName" placeholder="">
							</div>
						</div>
						<br><br><br>
						<div class="form-group">
							<label for="lastName" class="control-label col-xs-2">Фамилия</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" id="lastName" placeholder="">
							</div>
						</div>
						<br><br>
						<div class="form-group">
							<label for="password" class="control-label col-xs-2">Пароль</label>
							<div class="col-xs-10">
								<input type="password" class="form-control" id="password" placeholder="">
							</div>
						</div>
						<br><br>
						<div class="form-group">
							<label for="confirmPassword" class="control-label col-xs-2">Подтвержддение пароля</label>
							<div class="col-xs-10">
								<input type="password" class="form-control" id="confirmPassword" placeholder="">
							</div>
						</div>
						<br><br>
						<div class="form-group">
							<div class="col-xs-offset-2 col-xs-10">
								<div class="checkbox">
									<label><input type="checkbox"> Запомнить</label>
								</div>
							</div>
						</div>
						<br>
						<div class="form-group">
							<div class="col-xs-offset-2 col-xs-10">
								<button type="submit" class="btn btn-primary">Войти</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>