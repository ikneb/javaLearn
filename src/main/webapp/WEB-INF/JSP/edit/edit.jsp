<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container">
	<div id="content">
		<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
			<li class="active"><a href="/edit/edit">Basis</a></li>
			<li><a href="/edit/contacts">Contacts</a></li>
			<li><a href="/edit/skills">Technical skills</a></li>
			<li><a href="/edit/practics">Practic</a></li>
			<li><a href="/edit/certificates">Certificates</a></li>
			<li><a href="/edit/courses">Сourses</a></li>
			<li><a href="/edit/education">Education</a></li>
			<li><a href="/edit/languages">Languages</a></li>
			<li><a href="/edit/hobbies">Hobbies</a></li>
			<li><a href="/edit/info">Additional Info</a></li>
		</ul>
		<div class="tab-content brd">
			<div class="panel panel-default">
				<form:form action="/edit/edit" method="post" commandName="accountForm">
					<div class="tab-pane active" id="basis">

						<h3 class="text">${accountForm.account.fullName}</h3>
						<hr>
						<div class="container">
							<div class="row">
								<div class="col-lg-7 text">
									<h4>Photo*</h4>
									<img src="${accountForm.account.largePhoto}">
									<br><br><br>
									<form role="form" class="form-inline" style="padding-top: 20px;">

										<div class="form-group">
											<input class="form-control" id="pass" placeholder="file">
										</div>
										<button type="submit" class="btn btn-info">
											<i class="fa fa-folder-open-o" aria-hidden="true"> </i>Browse...
										</button>
									</form>
								</div>
								<div class="col-lg-4" style="padding-top: 80px;">
									<blockquote>
										1. Фотография может многое рассказать о кандидате: начиная от его эстетических качеств и заканчивая его отношением к поиску серьезной
										работы. <br>2. Фотография как на паспорт или в костюме необязательна, главное адекватность и ухоженный, аккуратный внешний вид.<br>
										3. Размер фотографии должен быть не меньше чем 400х400. <br>4. Файл должен быть в формате jpg.
									</blockquote>
								</div>
							</div>
						</div>
						<hr>
						<div class="container">
							<div class="row">
								<div class="col-lg-7 text">

									<div class="form-group">
										<label for="inputBirthday" class="col-lg-4 control-label text">Birthday*</label>
										<div class="col-lg-8">
											<input class="form-control" id="inputBirthday" placeholder="1991-03-20" value="${accountForm.account.birthDay}" name="account.birthDay" required="required">
										</div>
										<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
												<form:errors path="account.birthDay" cssClass="alert alert-danger" element="div" />
											</div>
									</div>
								</div>
								<div class="col-lg-4">
									<blockquote>Формат даты: yyyy-mm-dd (четыре цыфры года - код месяца - день рождения)</blockquote>
								</div>
							</div>
						</div>
						<hr>
						<div class="container">
							<div class="row">
								<div class="col-lg-7 text">
									<div class="form-group">
										<label for="inputCountry" class="col-lg-4 control-label text">Country*</label>
										<div class="col-lg-8">
											<input class="form-control" id="inputCountry" placeholder="Ukraine" value="${accountForm.account.country}" name="account.country" required="required">
										</div>
										<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
												<form:errors path="account.country" cssClass="alert alert-danger" element="div" />
											</div>
									</div>
								</div>
								<div class="col-lg-4"></div>
							</div>
						</div>
						<hr>
						<div class="container">
							<div class="row">
								<div class="col-lg-7 text">
									<div class="form-group">
										<label for="inputCity" class="col-lg-4 control-label text">City*</label>
										<div class="col-lg-8">
											<input class="form-control" id="inputCity" placeholder="Kiev" value="${accountForm.account.city}" name="account.city" required="required">
										</div>
										<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
												<form:errors path="account.city" cssClass="alert alert-danger" element="div" />
											</div>
									</div>
								</div>
								<div class="col-lg-4"></div>
							</div>
						</div>
						<hr>
						<div class="container">
							<div class="row">
								<div class="col-lg-7 text">
									<div class="form-group">
										<label for="inputEmail" class="col-lg-4 control-label text">Email*</label>
										<div class="col-lg-8">
											<input class="form-control" id="inputEmail" placeholder="nakonecniy-eduard@gmail.com" value="${accountForm.account.email}"
												name="account.email" required="required">
										</div>
										<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
												<form:errors path="account.email" cssClass="alert alert-danger" element="div" />
											</div>
									</div>
								</div>
								<div class="col-lg-4">
									<blockquote>
										1.Желательно, чтобы email содержал Ваше имя и фамилию как указано в загран паспорте. Усли указаное имя уже занято, возможно сокращение.<br>
										2.Не рекомендуется использовать креативные email, например TheBestDeveloper@gmail.com, lacomka@gmail.com, etc.<br> 3.Не рекомендуется
										использовать доменное имя работодателя там где Вы сейчас работаете. <br> 4.Для программистов рекомендуется использовать домен
										@gmail.com.
									</blockquote>
								</div>
							</div>
						</div>
						<hr>
						<div class="container">
							<div class="row">
								<div class="col-lg-7 text">
									<div class="form-group">
										<label for="inputPhone" class="col-lg-4 control-label text">Phone*</label>
										<div class="col-lg-8">
											<input class="form-control" id="inputEmail" placeholder="+380992334455" value="${accountForm.account.phone}" name="account.phone" required="required">
										</div>
										<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
												<form:errors path="account.phone" cssClass="alert alert-danger" element="div" />
											</div>
									</div>
								</div>
								<div class="col-lg-4">
									<blockquote>Номер телефона должен быть рабочим и тем номером с которым Вы будете отвечать на звонки с неизвестных Вам номеров.
										Номера телефона нужно предоставлять в формате Е.164, например +380501234567</blockquote>
								</div>
							</div>
						</div>
						<hr>
						<div class="container">
							<div class="row">
								<div class="col-lg-7 text">
									<div class="form-group">
										<label for="inputObjective" class="col-lg-4 control-label text">Objective*</label>
										<div class="col-lg-8">
											<input class="form-control" id="inputEmail" placeholder="Junior Java Developer" value="${accountForm.account.objective}"
												name="account.objective" required="required">
										</div>
										<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
												<form:errors path="account.objective" cssClass="alert alert-danger" element="div" />
											</div>
									</div>
								</div>
								<div class="col-lg-4">
									<blockquote>В данном разделе нужно указать желаемую должность, максимально кратко и понятно.</blockquote>
								</div>
							</div>
						</div>
						<hr>
						<div class="container">
							<div class="row">
								<div class="col-lg-7 text">
									<div class="form-group">
										<label for="qualifications" class="col-lg-4 control-label text">Your qualifications</label>
										<div class="col-lg-8">
											<textarea class="form-control" rows="5" id="qualifications" name="account.summary" required="required">${accountForm.account.summary}</textarea>
										</div>
										<div class="row skill-delim">
											<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
												<form:errors path="account.summary" cssClass="alert alert-danger" element="div" />
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<blockquote>
										1.В данном разделе необходимо описать Ваш опыт (практический или теоретический) по тому направлению в котором Вы ищете работу.<br>
										2.Если Вы работали фотографом и хотите изменит профиль своей деятельности не нужно описывать Ваши достижения в фотографии при поиске работы
										программистом.<br> 3.Если во желаемой должности у Вас нет достижений, это повод пройти какие-то курсы в данном направлении или
										самостоятельно изучить основы будущей професии.
									</blockquote>
								</div>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-xs-12 text-center">
								<input type="submit" class="btn btn-primary" value="Сохранить">
							</div>
						</div>
						<br>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>