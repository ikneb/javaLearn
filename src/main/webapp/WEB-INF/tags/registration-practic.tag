<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="resume" tagdir="/WEB-INF/tags" %>
<div class="tab-pane" id="practic">
	<h3 class="center">Практический оппыт</h3>
	<hr>
	<div class="frame">

		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	<br>
	<br>
		<div class="row" >
			<div class="col-lg-6 col-sm-6">
				<div class="input-practic">
					<label for="usr">Должность</label> <input type="text" class="form-control" id="usr">
				</div>
			</div>
			<div class="col-lg-6 col-sm-6">
				<div class="input-practic">
					<label for="usr">Компания или организация</label> <input type="text" class="form-control" id="usr">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3 col-sm-3 ">
				<div class="input-practic">
					<label for="begin-month">Дата начала</label> <select class="form-control" id="begin-month">
						<resume:month/>
					</select>
				</div>
			</div>
			<div class="col-lg-3 col-sm-3">
				<div class="input-practic">
					<label for="begin-year">.</label><select class="form-control" id="begin-year">
						<resume:year/>
					</select>
				</div>
			</div>
			<div class="col-lg-3 col-sm-3">
				<div class="input-practic">
					<label for="finish-month">Дата завершения</label> <select class="form-control" id="finish-month">
						<resume:month/>
					</select>
				</div>
			</div>
			<div class="col-lg-3 col-sm-3">
				<div class="input-practic">
					<label for="finish-year">.</label> <select class="form-control" id="finish-year">
						<resume:year/>
					</select>
				</div>
			</div>
		</div>
		
			<div class="input-practic">
				<label for="comment">Обязаности/Достижения</label>
				<textarea class="form-control" rows="5" id="comment"></textarea>
			
		</div>
		<div class="row">
			<div class="col-lg-6 col-sm-6">
				<div class="input-practic-bottom">
					<label for="usr">Должность</label> <input type="text" class="form-control" id="usr">
				</div>
			</div>
			<div class="col-lg-6 col-sm-6">
				<div class="input-practic-bottom" >
					<label for="usr">Компания или организация</label> <input type="text" class="form-control" id="usr">
				</div>
			</div>
		</div>
	</div>
	<hr>
	<div style="text-align: center;">
	<a href="#" class="navbar-link" > + Добавить еще</a>
	</div>
	<hr>
	<div class="container text">
						<button type="submit" class="btn btn-info">
							<i class="fa fa-folder-open-o" aria-hidden="true"> </i>Save
						</button>
					</div>
</div>