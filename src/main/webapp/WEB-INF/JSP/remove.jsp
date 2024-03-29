<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="resume" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<div class="container">
	<div class="row">
		<div class="col-lg-1  col-sm-1"></div>
		<div class="col-lg-10  col-sm-10">
			<div class="panel panel-danger">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-exclamation-circle" aria-hidden="true"></i> Удаление аккаунта - безвозвратная операция!
					</h3>
				</div>
				<div class="panel-body">
					Удаление аккаунта <strong>НЕ МОЖЕТ БЫТЬ ОТМЕНЕНО</strong>. Пожалуйста, подтвердите удаление: <strong></strong> <br>
					<hr>
					<div class="row">
						<div class="navbar-form navbar-right">
							<a href="/removeConfirmation" class="btn btn-primary pull-right">Подтвердить удаление</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-1  col-sm-1"></div>
	</div>
</div>








