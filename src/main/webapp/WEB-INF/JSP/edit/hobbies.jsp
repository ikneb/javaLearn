<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container">
<div class="tab-content brd">
	

		<h3 class="center">Некоторые работодатели уделяют внимание на хобби кандидата</h3>
		<p class="center">Выберите не более пяти пунктов</p>
		<hr>


		

		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Cycling' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">
					<i class="fa fa-bicycle" aria-hidden="true"></i> Cycling
				</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Handball' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Handball</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Football' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off"">
					<i class="fa fa-futbol-o" aria-hidden="true"></i> Football
				</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Basketball' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">
					<i class="fa fa-dribbble" aria-hidden="true"></i> Basketball
				</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Bowling' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Bowling</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Boxing' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Boxing</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Volleyball' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Volleyball</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Baseball' ? 'active' : '' }</c:forEach> " data-toggle="button" aria-pressed="false" autocomplete="off">Baseball</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Skating' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Skating</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Skiing' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Skiing</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Table tennis' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Table tennis</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Tennis' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Tennis</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Weightlifting' ? 'active' : '' }</c:forEach> " data-toggle="button" aria-pressed="false" autocomplete="off">Weightlifting</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Automobiles' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">
					<i class="fa fa-car" aria-hidden="true"></i> Automobiles
				</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Book reading' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">
					<i class="fa fa-book" aria-hidden="true"></i> Book reading
				</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Cricket' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Cricket</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Photo' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Photo</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Shopping' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Shopping</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Cooking' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Cooking</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Codding' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Codding</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Animals' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Animals</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Traveling' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Traveling</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Movie' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Movie</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Painting' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Painting</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Darts' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Darts</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Fishing' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Fishing</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Kayak slalom' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Kayak slalom</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Games of' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Games of
					chance</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Ice hockey' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Ice hockey</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Roller' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Roller
					skating</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Swimming' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Swimming</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Diving' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Diving</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Golf' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Golf</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Shooting' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Shooting</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Rowing' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Rowing</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Camping' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Camping</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Archery' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Archery</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Pubs' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Pubs</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Music' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Music</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Computer' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Computer
					games</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Authorship' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Authorship</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Foreign' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Foreign
					langPubs</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Billiards' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Billiards</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Skateboarding' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Skateboarding</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Disco' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Disco</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Collecting' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Collecting</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Badminton' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Badminton</button>
			</div>
			<div class="col-lg-3  col-sm-3">
				<button type="button" class="btn btn-default btn-lg btn-block <c:forEach var="hobby" items="${hobbies}" varStatus="status">${hobby.name == 'Singing' ? 'active' : '' }</c:forEach>" data-toggle="button" aria-pressed="false" autocomplete="off">Singing</button>
			</div>
		</div>
	




	<hr>
	<div class="container text">
		<button type="submit" class="btn btn-info">
			<i class="fa fa-folder-open-o" aria-hidden="true"> </i>Save
		</button>
	</div>
</div>
</div>
