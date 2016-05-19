<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<div class="container">
	<div id="content">
		<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
			<li><a href="/edit/edit">Basis</a></li>
			<li><a href="/edit/contacts">Contacts</a></li>
			<li><a href="/edit/skills">Technical skills</a></li>
			<li><a href="/edit/practics">Practic</a></li>
			<li><a href="/edit/certificates">Certificates</a></li>
			<li><a href="/edit/courses">Сourses</a></li>
			<li><a href="/edit/education">Education</a></li>
			<li><a href="/edit/languages">Languages</a></li>
			<li><a href="/edit/hobbies">Hobbies</a></li>
			<li class="active"><a href="/edit/info" data-toggle="tab">Additional Info</a></li>
		</ul>
		
<div class="tab-content brd">

			<div class="panel panel-default">

					<h2 class="center">O себе</h2>
					<hr>
					<h4 class="center">Несколько слов осебе, которы е предоставят Вам преимущества перед другими кандидатами</h4>
					<hr>
					<form:form action="/edit/info" method="post" commandName="accountForm">
						<div class="input-practic">
							<textarea class="form-control" rows="5" id="" name="account.info">${accountForm.account.info}</textarea>
							<div class="row skill-delim">
								<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
									<form:errors path="account.info" cssClass="alert alert-danger" element="div" />
								</div>
							</div>
							<br>
							<blockquote>
								<p>
									Укажите дополнительную информацию, котоорая действительно важна работодателю. Например:<br> Наличие открытой визы в иностранное
									государство, семейное положение, если женат и есть дети, реальный опыт в деятельности, которая может быть Вашей предметной областью при
									разработке програмного обеспечения, возможно опыт исследовательськой работы и НИИ и т.д.<br> Не стоит указывать ваши личностные
									качества, почти все кандидаты ответственны, комуникабельные и порядочные)))
								</p>
							</blockquote>
						</div>

						<hr>
						<div class="row">
							<div class="col-xs-12 text-center">
								<input type="submit" class="btn btn-primary" value="Сохранить">
							</div>
						</div>
					</form:form>

				</div>
			</div>

		</div>
	</div>

