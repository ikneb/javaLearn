<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>


<div class="frame">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	<br> <br>

	<div class="row">
		<div class="col-lg-4 col-sm-4 ">
			<div class="input-practic">
				<label for="name-course">Название курса*</label> <input type="text" class="form-control" id="name-course" name="items[0].name" value="" />
			</div>
			<div class="row skill-delim">
				<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
					<form:errors path="items[0].name" cssClass="alert alert-danger" element="div" />
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-4">
			<div class="input-practic">
				<label for="school">Название учебного заведения*</label><input type="text" class="form-control" id="school" name="items[0].school" value="" />
			</div>
			<div class="row skill-delim">
				<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
					<form:errors path="items[0].school" cssClass="alert alert-danger" element="div" />
				</div>
			</div>
		</div>
		<div class="col-lg-2 col-sm-2">
			<div class="input-practic">
				<label for="finish-month">Окончания</label> <select class="form-control" id="finish-month" name="items[0].finishDateMonth">
					<option value="1">Jan</option>
					<option value="2">Feb</option>
					<option value="3">Mar</option>
					<option value="4">Apr</option>
					<option value="5">May</option>
					<option value="6">Jun</option>
					<option value="7">Jul</option>
					<option value="8">Aug</option>
					<option value="9">Sep</option>
					<option value="10">Oct</option>
					<option value="11">Nov</option>
					<option value="12">Dec</option>
				</select>
			</div>
		</div>
		<div class="col-lg-2 col-sm-2">
			<div class="input-practic">
				<label for="finish-year">.</label> <select class="form-control" id="finish-year" name="items[0].ifinishDateYear">
					<option>1985</option>
					<option>1986</option>
					<option>1987</option>
					<option>1988</option>
					<option>1989</option>
					<option>1991</option>
					<option>1992</option>
					<option>1993</option>
					<option>1994</option>
					<option>1995</option>
					<option>1996</option>
					<option>1997</option>
					<option>1998</option>
					<option>1999</option>
					<option>2001</option>
					<option>2002</option>
					<option>2003</option>
					<option>2004</option>
					<option>2005</option>
					<option>2006</option>
					<option>2007</option>
					<option>2008</option>
					<option>2009</option>
					<option>2010</option>
					<option>2011</option>
					<option>2012</option>
					<option>2013</option>
					<option >2014</option>
					<option >2015</option>
					<option >2016</option>
				</select>
			</div>
		</div>
	</div>
	<br>
</div>