<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container">
	<div id="content">
		
			<div class="tab-content brd">
			<c:forEach var="language" items="${languages}" varStatus="status">
				<div class="frame">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<br>
					<div class="row">
						<div class="col-lg-2 col-sm-2 ">
							<div class="input-practic">
								<label for="begin-month">Тип</label> <select class="form-control" id="begin-month">
									<option>Не указан</option>
									<option ${language.type == 'WRITING' ? ' selected="selected"' : ''}>Письменный</option>
									<option ${language.type == 'SPOKEN' ? ' selected="selected"' : ''}>Разговорный</option>
								</select>
							</div>
						</div>
						<div class="col-lg-2 col-sm-2 ">
							<div class="input-practic">
								<label for="begin-month">Язык</label> <select class="form-control" id="begin-month">
									<option ${language.name == 'English' ? ' selected="selected"' : ''}>English</option>
									<option ${language.name == 'Spanish' ? ' selected="selected"' : ''}>Spanish</option>
									<option ${language.name == 'French' ? ' selected="selected"' : ''}>French</option>
									<option ${language.name == 'German' ? ' selected="selected"' : ''}>German</option>
									<option ${language.name == 'Italian' ? ' selected="selected"' : ''}>Italian</option>
								</select>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6">
							<div class="input-practic">
							<label for="begin-month">Уровень</label> <select class="form-control" id="begin-month">
									<option ${language.level == 'BEGINER' ? ' selected="selected"' : ''}>Beginner</option>
									<option ${language.level == 'ELEMENTARY' ? ' selected="selected"' : ''}>Elementary</option>
									<option ${language.level == 'PRE_INTERMEDIATE' ? ' selected="selected"' : ''}>Pre-Intermed</option>
									<option ${language.level == 'INTERMEDIATE' ? ' selected="selected"' : ''}>Intermed</option>
									<option ${language.level == 'UPPER_INTERMEDIATE' ? ' selected="selected"' : ''}>Upper-Intermed</option>
									<option ${language.level == 'ADVANCED' ? ' selected="selected"' : ''}>Advanced</option>
									<option ${language.level == 'PROFICIENCY' ? ' selected="selected"' : ''}>Proficiency</option>
								</select>
							</div> 
						</div>
					</div>
					<br> <br>
				</div>
				<br>
		</c:forEach>

	</div>
</div>
</div>
