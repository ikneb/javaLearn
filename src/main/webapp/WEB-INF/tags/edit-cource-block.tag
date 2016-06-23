<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<%@ attribute name="index" required="true" type="java.lang.Object"%>
<%@ attribute name="course" required="false" type="net.devstudy.resume.entity.Course"%>

<div class="frame ui-item" id="ui-item-${index}">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	<br> <br> <input type="hidden" name="items[${index }].id" value="${course.id }" />
	<div class="row">
		<div class="col-lg-4 col-sm-4 ">
			<div class="input-practic">
				<label for="name-course">Название курса*</label> <input type="text" class="form-control" id="name-course" name="items[${index }].name"
					value="${course.name} " />
			</div>
			<div class="row skill-delim">
				<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
					<form:errors path="items[${index }].name" cssClass="alert alert-danger" element="div" />
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-sm-4">
			<div class="input-practic">
				<label for="school">Название учебного заведения*</label><input type="text" class="form-control" id="school" name="items[${index }].school"
					value="${course.school} " />
			</div>
			<div class="row skill-delim">
				<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
					<form:errors path="items[${index }].school" cssClass="alert alert-danger" element="div" />
				</div>
			</div>
		</div>
		<div class="col-lg-2 col-sm-2">
			<div class="input-practic">
				<label for="finish-month">Окончания</label> <select class="form-control" id="finish-month" name="items[${index }].finishDateMonth">
					<option ${practcourseic.finishDateMonth == 1 ? ' selected="selected"' : ''} value="1">Jan</option>
					<option ${course.finishDateMonth == 2 ? ' selected="selected"' : ''} value="2">Feb</option>
					<option ${course.finishDateMonth == 3 ? ' selected="selected"' : ''} value="3">Mar</option>
					<option ${course.finishDateMonth == 4 ? ' selected="selected"' : ''} value="4">Apr</option>
					<option ${course.finishDateMonth == 5 ? ' selected="selected"' : ''} value="5">May</option>
					<option ${course.finishDateMonth == 6 ? ' selected="selected"' : ''} value="6">Jun</option>
					<option ${course.finishDateMonth == 7 ? ' selected="selected"' : ''} value="7">Jul</option>
					<option ${course.finishDateMonth == 8 ? ' selected="selected"' : ''} value="8">Aug</option>
					<option ${course.finishDateMonth == 9 ? ' selected="selected"' : ''} value="9">Sep</option>
					<option ${course.finishDateMonth == 10 ? ' selected="selected"' : ''} value="10">Oct</option>
					<option ${course.finishDateMonth == 11 ? ' selected="selected"' : ''} value="11">Nov</option>
					<option ${course.finishDateMonth == 12 ? ' selected="selected"' : ''} value="12">Dec</option>
				</select>
			</div>
		</div>
		<div class="col-lg-2 col-sm-2">
			<div class="input-practic">
				<label for="finish-year">.</label> <select class="form-control" id="finish-year" name="items[${index }].finishDateYear">
					<option ${course.finishDateYear == 1985 ? ' selected="selected"' : ''}>1985</option>
					<option ${course.finishDateYear == 1986 ? ' selected="selected"' : ''}>1986</option>
					<option ${course.finishDateYear == 1987 ? ' selected="selected"' : ''}>1987</option>
					<option ${course.finishDateYear == 1988 ? ' selected="selected"' : ''}>1988</option>
					<option ${course.finishDateYear == 1989 ? ' selected="selected"' : ''}>1989</option>
					<option ${course.finishDateYear == 1991 ? ' selected="selected"' : ''}>1991</option>
					<option ${course.finishDateYear == 1992 ? ' selected="selected"' : ''}>1992</option>
					<option ${course.finishDateYear == 1993 ? ' selected="selected"' : ''}>1993</option>
					<option ${course.finishDateYear == 1994 ? ' selected="selected"' : ''}>1994</option>
					<option ${course.finishDateYear == 1995 ? ' selected="selected"' : ''}>1995</option>
					<option ${course.finishDateYear == 1996 ? ' selected="selected"' : ''}>1996</option>
					<option ${course.finishDateYear == 1997 ? ' selected="selected"' : ''}>1997</option>
					<option ${course.finishDateYear == 1998 ? ' selected="selected"' : ''}>1998</option>
					<option ${course.finishDateYear == 1999 ? ' selected="selected"' : ''}>1999</option>
					<option ${course.finishDateYear == 2001 ? ' selected="selected"' : ''}>2001</option>
					<option ${course.finishDateYear == 2002 ? ' selected="selected"' : ''}>2002</option>
					<option ${course.finishDateYear == 2003 ? ' selected="selected"' : ''}>2003</option>
					<option ${course.finishDateYear == 2004 ? ' selected="selected"' : ''}>2004</option>
					<option ${course.finishDateYear == 2005 ? ' selected="selected"' : ''}>2005</option>
					<option ${course.finishDateYear == 2006 ? ' selected="selected"' : ''}>2006</option>
					<option ${course.finishDateYear == 2007 ? ' selected="selected"' : ''}>2007</option>
					<option ${course.finishDateYear == 2008 ? ' selected="selected"' : ''}>2008</option>
					<option ${course.finishDateYear == 2009 ? ' selected="selected"' : ''}>2009</option>
					<option ${course.finishDateYear == 2010 ? ' selected="selected"' : ''}>2010</option>
					<option ${course.finishDateYear == 2011 ? ' selected="selected"' : ''}>2011</option>
					<option ${course.finishDateYear == 2012 ? ' selected="selected"' : ''}>2012</option>
					<option ${course.finishDateYear == 2013 ? ' selected="selected"' : ''}>2013</option>
					<option ${course.finishDateYear == 2014 ? ' selected="selected"' : ''}>2014</option>
					<option ${course.finishDateYear == 2015 ? ' selected="selected"' : ''}>2015</option>
					<option ${course.finishDateYear == 2016 ? ' selected="selected"' : ''}>2016</option>
				</select>
			</div>
		</div>
	</div>
	<br>
</div>