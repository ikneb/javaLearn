<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="container">
	<div id="content">
		<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
			<li><a href="#basis" >Basis</a></li>
			<li><a href="/edit/contacts" >Contacts</a></li>
			<li><a href="/edit/skills">Technical skills</a></li>
			<li><a href="/edit/practics">Practic</a></li>
			<li><a href="/edit/certificates">Certificates</a></li>
			<li><a href="/edit/courses">Сourses</a></li>
			<li><a href="/edit/education">Education</a></li>
			<li><a href="/edit/languages">Languages</a></li>
			<li class="active"><a href="/edit/hobbies">Hobbies</a></li>
			<li><a href="/edit/info">Additional Info</a></li>
		</ul>
		<div class="tab-content brd">



			<div class="panel panel-default">
					<h3 class="center">Некоторые работодатели уделяют внимание на хобби кандидата</h3>
					<p class="center">Выберите не более пяти пунктов</p>
					<hr>
					<form:form action="/edit/hobbies" method="post" commandName="hobbyForm">
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Cycling' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">
									<i class="fa fa-bicycle" aria-hidden="true"></i> Cycling
								</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Handball' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Handball</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Football' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">
									<i class="fa fa-futbol-o" aria-hidden="true"></i> Football
								</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Basketball' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">
									<i class="fa fa-dribbble" aria-hidden="true"></i> Basketball
								</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Bowling' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Bowling</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Boxing' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Boxing</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Volleyball' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Volleyball</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Baseball' ? 'active' : '' }</c:forEach> "
									data-toggle="button" aria-pressed="false">Baseball</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Skating' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Skating</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Skiing' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Skiing</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Table tennis' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Table tennis</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Tennis' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Tennis</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Weightlifting' ? 'active' : '' }</c:forEach> "
									data-toggle="button" aria-pressed="false">Weightlifting</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Automobiles' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">
									<i class="fa fa-car" aria-hidden="true"></i> Automobiles
								</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Book reading' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">
									<i class="fa fa-book" aria-hidden="true"></i> Book reading
								</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Cricket' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Cricket</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Photo' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Photo</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Shopping' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Shopping</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Cooking' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Cooking</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Codding' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Codding</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Animals' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Animals</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Traveling' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Traveling</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Movie' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Movie</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Painting' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Painting</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Darts' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Darts</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Fishing' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Fishing</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Kayak slalom' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Kayak slalom</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Games of' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Games of chance</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Ice hockey' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Ice hockey</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Roller' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Roller skating</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Swimming' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Swimming</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Diving' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Diving</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Golf' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Golf</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Shooting' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Shooting</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Rowing' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Rowing</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Camping' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Camping</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Archery' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Archery</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Pubs' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Pubs</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Music' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Music</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Computer' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Computer games</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Authorship' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Authorship</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Foreign' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Foreign langPubs</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Billiards' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Billiards</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Skateboarding' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Skateboarding</button>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Disco' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Disco</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Collecting' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Collecting</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Badminton' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false">Badminton</button>
							</div>
							<div class="col-lg-3  col-sm-3">
								<button type="button"
									class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Singing' ? 'active' : '' }</c:forEach>"
									data-toggle="button" aria-pressed="false"
									<c:forEach var="hobby" items="${hobbyForm.items}" varStatus="status">${hobby.name == 'Singing' ? '' : '' }</c:forEach>>Singing</button>
							</div>
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

