<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>


<div class="frame">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	<br> <br>
	<div class="input-practic">
		<label for="comment">Развернутая специализация</label>
		<textarea class="form-control" rows="5" id="" name="items[0].summary"></textarea>
	</div>
	<div class="row skill-delim">
		<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
			<form:errors path="items[0].summary" cssClass="alert alert-danger" element="div" />
		</div>
	</div>
	<div class="row">
		<div class="col-lg-6 col-sm-6 ">
			<div class="input-practic">
				<label for="begin-month">Дата начала</label> <select class="form-control" id="begin-month" name="items[0].beginYear">
					<option ${education.beginYear == 1985 ? ' selected="selected"' : ''}>1985</option>
					<option ${education.beginYear == 1986 ? ' selected="selected"' : ''}>1986</option>
					<option ${education.beginYear == 1987 ? ' selected="selected"' : ''}>1987</option>
					<option ${education.beginYear == 1988 ? ' selected="selected"' : ''}>1988</option>
					<option ${education.beginYear == 1989 ? ' selected="selected"' : ''}>1989</option>
					<option ${education.beginYear == 1991 ? ' selected="selected"' : ''}>1991</option>
					<option ${education.beginYear == 1992 ? ' selected="selected"' : ''}>1992</option>
					<option ${education.beginYear == 1993 ? ' selected="selected"' : ''}>1993</option>
					<option ${education.beginYear == 1994 ? ' selected="selected"' : ''}>1994</option>
					<option ${education.beginYear == 1995 ? ' selected="selected"' : ''}>1995</option>
					<option ${education.beginYear == 1996 ? ' selected="selected"' : ''}>1996</option>
					<option ${education.beginYear == 1997 ? ' selected="selected"' : ''}>1997</option>
					<option ${education.beginYear == 1998 ? ' selected="selected"' : ''}>1998</option>
					<option ${education.beginYear == 1999 ? ' selected="selected"' : ''}>1999</option>
					<option ${education.beginYear == 2001 ? ' selected="selected"' : ''}>2001</option>
					<option ${education.beginYear == 2002 ? ' selected="selected"' : ''}>2002</option>
					<option ${education.beginYear == 2003 ? ' selected="selected"' : ''}>2003</option>
					<option ${education.beginYear == 2004 ? ' selected="selected"' : ''}>2004</option>
					<option ${education.beginYear == 2005 ? ' selected="selected"' : ''}>2005</option>
					<option ${education.beginYear == 2006 ? ' selected="selected"' : ''}>2006</option>
					<option ${education.beginYear == 2007 ? ' selected="selected"' : ''}>2007</option>
					<option ${education.beginYear == 2008 ? ' selected="selected"' : ''}>2008</option>
					<option ${education.beginYear == 2009 ? ' selected="selected"' : ''}>2009</option>
					<option ${education.beginYear == 2010 ? ' selected="selected"' : ''}>2010</option>
					<option ${education.beginYear == 2011 ? ' selected="selected"' : ''}>2011</option>
					<option ${education.beginYear == 2012 ? ' selected="selected"' : ''}>2012</option>
					<option ${education.beginYear == 2013 ? ' selected="selected"' : ''}>2013</option>
					<option ${education.beginYear == 2014 ? ' selected="selected"' : ''}>2014</option>
					<option ${education.beginYear == 2015 ? ' selected="selected"' : ''}>2015</option>
					<option ${education.beginYear == 2016 ? ' selected="selected"' : ''}>2016</option>
				</select>
			</div>
		</div>
		<div class="col-lg-6 col-sm-6">
			<div class="input-practic">
				<label for="finish-month">Дата завершения</label> <select class="form-control" id="finish-month" name="items[0].finishYear">
					<option ${education.finishYear == 1985 ? ' selected="selected"' : ''}>1985</option>
					<option ${education.finishYear == 1986 ? ' selected="selected"' : ''}>1986</option>
					<option ${education.finishYear == 1987 ? ' selected="selected"' : ''}>1987</option>
					<option ${education.finishYear == 1988 ? ' selected="selected"' : ''}>1988</option>
					<option ${education.finishYear == 1989 ? ' selected="selected"' : ''}>1989</option>
					<option ${education.finishYear == 1991 ? ' selected="selected"' : ''}>1991</option>
					<option ${education.finishYear == 1992 ? ' selected="selected"' : ''}>1992</option>
					<option ${education.finishYear == 1993 ? ' selected="selected"' : ''}>1993</option>
					<option ${education.finishYear == 1994 ? ' selected="selected"' : ''}>1994</option>
					<option ${education.finishYear == 1995 ? ' selected="selected"' : ''}>1995</option>
					<option ${education.finishYear == 1996 ? ' selected="selected"' : ''}>1996</option>
					<option ${education.finishYear == 1997 ? ' selected="selected"' : ''}>1997</option>
					<option ${education.finishYear == 1998 ? ' selected="selected"' : ''}>1998</option>
					<option ${education.finishYear == 1999 ? ' selected="selected"' : ''}>1999</option>
					<option ${education.finishYear == 2001 ? ' selected="selected"' : ''}>2001</option>
					<option ${education.finishYear == 2002 ? ' selected="selected"' : ''}>2002</option>
					<option ${education.finishYear == 2003 ? ' selected="selected"' : ''}>2003</option>
					<option ${education.finishYear == 2004 ? ' selected="selected"' : ''}>2004</option>
					<option ${education.finishYear == 2005 ? ' selected="selected"' : ''}>2005</option>
					<option ${education.finishYear == 2006 ? ' selected="selected"' : ''}>2006</option>
					<option ${education.finishYear == 2007 ? ' selected="selected"' : ''}>2007</option>
					<option ${education.finishYear == 2008 ? ' selected="selected"' : ''}>2008</option>
					<option ${education.finishYear == 2009 ? ' selected="selected"' : ''}>2009</option>
					<option ${education.finishYear == 2010 ? ' selected="selected"' : ''}>2010</option>
					<option ${education.finishYear == 2011 ? ' selected="selected"' : ''}>2011</option>
					<option ${education.finishYear == 2012 ? ' selected="selected"' : ''}>2012</option>
					<option ${education.finishYear == 2013 ? ' selected="selected"' : ''}>2013</option>
					<option ${education.finishYear == 2014 ? ' selected="selected"' : ''}>2014</option>
					<option ${education.finishYear == 2015 ? ' selected="selected"' : ''}>2015</option>
					<option ${education.finishYear == 2016 ? ' selected="selected"' : ''}>2016</option>
				</select>
			</div>
		</div>

	</div>


	<div class="row">
		<div class="col-lg-6 col-sm-6">
			<div class="input-practic-bottom">
				<label for="usr">Вуз</label> <input type="text" class="form-control" id="usr" name="items[0].university" >
			</div>
			<div class="row skill-delim">
			<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
				<form:errors path="items[0].university" cssClass="alert alert-danger" element="div" />
			</div>
		</div>
		</div>
		
		<div class="col-lg-6 col-sm-6">
			<div class="input-practic-bottom">
				<label for="usr">Факультет</label> <input type="text" class="form-control" id="usr" name="items[0].faculty" >
			</div>
			<div class="row skill-delim">
			<div class="col-xs-offset-5 col-sm-offset-4 col-md-offset-2 col-xs-7 col-sm-8 col-md-10" style="padding-left: 0px;">
				<form:errors path="items[0].faculty" cssClass="alert alert-danger" element="div" />
			</div>
		</div>
		</div>
		
	</div>
</div>