<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>
 
 
<div class="container">
	<div class="tab-content brd">
	<h3 class="center">Курсы повышения квалификации</h3>
	<hr>
	
	<div class="frame-certificates">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<br> <br>

		<div class="row">
			<div class="col-lg-4 col-sm-4 ">
				<div class="input-practic">
					<label for="name-cource">Название курса*</label> <input type="text" class="form-control" id="name-cource" />
				</div>
			</div>
			<div class="col-lg-4 col-sm-4">
				<div class="input-practic">
					<label for="school">Название учебного заведения*</label><input type="text" class="form-control" id="school" />
				</div>
			</div>
			<div class="col-lg-2 col-sm-2">
				<div class="input-practic">
					<label for="finish-month">Окончания</label> <select class="form-control" id="finish-month">
						
					</select>
				</div>
			</div>
			<div class="col-lg-2 col-sm-2">
				<div class="input-practic">
					<label for="finish-year">.</label> <select class="form-control" id="finish-year">
						
					</select>
				</div>
			</div>
		</div>
	<br>
	</div>
	<hr>
		<div class="add">
			<a href="#" > + Добавить еще</a> 
		</div>
	<hr>
	<div class="container text">
		<button type="submit" class="btn btn-info">
			<i class="fa fa-folder-open-o" aria-hidden="true"> </i>Save
		</button>
	</div>

</div>
</div>

