<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>


<div class="container">
	<div id="content">
		<ul id="tabs" class="nav nav-tabs">
			<li><a href="#basis">Basis</a></li>
			<li class="active"><a href="/edit/contacts">Contacts</a></li>
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
				<form:form action="/edit/contacts" method="post" commandName="contactForm">
					<div class="tab-pane" id="contacts">
						<h3 class="text">Дополнительные контакты</h3>
						<div class="container">
							<div class="row">
								<hr class="col-lg-7">
								<div class="col-lg-7 text">
									<div class="form-group">
										<label for="inputSkyp" class="col-lg-4 control-label text">Skyp</label>
										<div class="col-lg-8">
											<input class="form-control" id="inputSkyp" name="contact.skype" value="${contact.skype}">
										</div>
										<div class="row skill-delim">
												<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
													<form:errors path="contact.skype" cssClass="alert alert-danger" element="div" />
												</div>
											</div>
									</div>
								</div>
								<div class="col-lg-5">
									<blockquote>
										1.В данном разделе необходимо описать Ваш опыт (практический или теоретический) по тому направлению в котором Вы ищете работу.<br>
										2.Если Вы работали фотографом и хотите изменит профиль своей деятельности не нужно описывать Ваши достижения в фотографии при поиске работы
										программистом.<br> 3.Если во желаемой должности у Вас нет достижений, это повод пройти какие-то курсы в данном направлении или
										самостоятельно изучить основы будущей професии.
									</blockquote>
								</div>
							</div>
						</div>,2
						<div class="container">
							<div class="row">
								<hr class="col-lg-7">
								<div class="col-lg-7 text">
									<div>
										<div class="form-group">
											<label for="inputVcontakte" class="col-lg-4 control-label text">Vcontakte</label>
											<div class="col-lg-8">
												<input class="form-control" id="inputVcontakte" name="contact.vkontakte" value="${contact.vkontakte}">
											</div>
											<div class="row skill-delim">
												<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
													<form:errors path="contact.vkontakte" cssClass="alert alert-danger" element="div" />
												</div>
											</div>
										</div>
									</div>

									<hr class="hr">
									<div>
										<div class="form-group">
											<label for="inputFacebook" class="col-lg-4 control-label text">Facebook</label>
											<div class="col-lg-8">
												<input class="form-control" id="inputFacebook" name="contact.facebook" value="${contact.facebook}">
											</div>
											<div class="row skill-delim">
												<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
													<form:errors path="contact.facebook" cssClass="alert alert-danger" element="div" />
												</div>
											</div>
										</div>
									</div>
									<div>
										<hr class="hr">
										<div class="form-group">
											<label for="inputLinkedin" class="col-lg-4 control-label text">Linkedin</label>
											<div class="col-lg-8">
												<input class="form-control" id="inputLinkedin" name="contact.linkedin" value="${contact.linkedin}">
											</div>
											<div class="row skill-delim">
												<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
													<form:errors path="contact.linkedin" cssClass="alert alert-danger" element="div" />
												</div>
											</div>
										</div>
									</div>
									<div>

										<hr class="hr">

										<div class="form-group">
											<label for="inputGithub" class="col-lg-4 control-label text">Github</label>
											<div class="col-lg-8">
												<input class="form-control" id="inputGithub" placeholder="" name="contact.github" value="${contact.github}">
											</div>
											<div class="row skill-delim">
												<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
													<form:errors path="contact.github" cssClass="alert alert-danger" element="div" />
												</div>
											</div>
										</div>
									</div>
									<div>

										<hr class="hr">

										<div class="form-group">
											<label for="inputStackoverflow" class="col-lg-4 control-label text">Stackoverflow</label>
											<div class="col-lg-8">
												<input class="form-control" id="inputStackoverflow" name="contact.stackoverflow" value="${contact.stackoverflow}">
											</div>
											<div class="row skill-delim">
												<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
													<form:errors path="contact.stackoverflow" cssClass="alert alert-danger" element="div" />
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-5">
									<blockquote>
										1.В данном разделе необходимо описать Ваш опыт (практический или теоретический) по тому направлению в котором Вы ищете работу.<br>
										2.Если Вы работали фотографом и хотите изменит профиль своей деятельности не нужно описывать Ваши достижения в фотографии при поиске работы
										программистом.<br> 3.Если во желаемой должности у Вас нет достижений, это повод пройти какие-то курсы в данном направлении или
										самостоятельно изучить основы будущей професии.
									</blockquote>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12 text-center">
									<input type="submit" class="btn btn-primary" value="Сохранить">
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>