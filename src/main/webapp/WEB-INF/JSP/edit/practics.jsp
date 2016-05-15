<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container">
	<div class="tab-content brd">
		<h3 class="center">Практический оппыт</h3>
		<hr>
		<c:forEach var="practic" items="${practics}">
			<div class="frame">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<br> <br>
				<div class="row">
					<div class="col-lg-6 col-sm-6">
						<div class="input-practic">
							<label for="usr">Должность</label> <input type="text" class="form-control" id="usr" value="${practic.position}">
						</div>
					</div>
					<div class="col-lg-6 col-sm-6">
						<div class="input-practic">
							<label for="usr">Компания или организация</label> <input type="text" class="form-control" id="usr" value="${practic.company}">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-sm-3 ">
						<div class="input-practic">
							<label for="begin-month">Дата начала</label> <select class="form-control" id="begin-month">
								<option ${practic.beginDateMonth == 1 ? ' selected="selected"' : ''}>Jan</option>
								<option ${practic.beginDateMonth == 2 ? ' selected="selected"' : ''}>Feb</option>
								<option ${practic.beginDateMonth == 3 ? ' selected="selected"' : ''}>Mar</option>
								<option ${practic.beginDateMonth == 4 ? ' selected="selected"' : ''}>Apr</option>
								<option ${practic.beginDateMonth == 5 ? ' selected="selected"' : ''}>May</option>
								<option ${practic.beginDateMonth == 6 ? ' selected="selected"' : ''}>June</option>
								<option ${practic.beginDateMonth == 7 ? ' selected="selected"' : ''}>July</option>
								<option ${practic.beginDateMonth == 8 ? ' selected="selected"' : ''}>Aug</option>
								<option ${practic.beginDateMonth == 9 ? ' selected="selected"' : ''}>Sept</option>
								<option ${practic.beginDateMonth == 10 ? ' selected="selected"' : ''}>Oct</option>
								<option ${practic.beginDateMonth == 11 ? ' selected="selected"' : ''}>Nov</option>
								<option ${practic.beginDateMonth == 12 ? ' selected="selected"' : ''}>Dec</option>
							</select>
						</div>
					</div>
					<div class="col-lg-3 col-sm-3">
						<div class="input-practic">
							<label for="begin-year">.</label><select class="form-control" id="begin-year">
								<option ${practic.beginDateYear == 1985 ? ' selected="selected"' : ''}>1985</option>
								<option ${practic.beginDateYear == 1986 ? ' selected="selected"' : ''}>1986</option>
								<option ${practic.beginDateYear == 1987 ? ' selected="selected"' : ''}>1987</option>
								<option ${practic.beginDateYear == 1988 ? ' selected="selected"' : ''}>1988</option>
								<option ${practic.beginDateYear == 1989 ? ' selected="selected"' : ''}>1989</option>
								<option ${practic.beginDateYear == 1991 ? ' selected="selected"' : ''}>1991</option>
								<option ${practic.beginDateYear == 1992 ? ' selected="selected"' : ''}>1992</option>
								<option ${practic.beginDateYear == 1993 ? ' selected="selected"' : ''}>1993</option>
								<option ${practic.beginDateYear == 1994 ? ' selected="selected"' : ''}>1994</option>
								<option ${practic.beginDateYear == 1995 ? ' selected="selected"' : ''}>1995</option>
								<option ${practic.beginDateYear == 1996 ? ' selected="selected"' : ''}>1996</option>
								<option ${practic.beginDateYear == 1997 ? ' selected="selected"' : ''}>1997</option>
								<option ${practic.beginDateYear == 1998 ? ' selected="selected"' : ''}>1998</option>
								<option ${practic.beginDateYear == 1999 ? ' selected="selected"' : ''}>1999</option>
								<option ${practic.beginDateYear == 2001 ? ' selected="selected"' : ''}>2001</option>
								<option ${practic.beginDateYear == 2002 ? ' selected="selected"' : ''}>2002</option>
								<option ${practic.beginDateYear == 2003 ? ' selected="selected"' : ''}>2003</option>
								<option ${practic.beginDateYear == 2004 ? ' selected="selected"' : ''}>2004</option>
								<option ${practic.beginDateYear == 2005 ? ' selected="selected"' : ''}>2005</option>
								<option ${practic.beginDateYear == 2006 ? ' selected="selected"' : ''}>2006</option>
								<option ${practic.beginDateYear == 2007 ? ' selected="selected"' : ''}>2007</option>
								<option ${practic.beginDateYear == 2008 ? ' selected="selected"' : ''}>2008</option>
								<option ${practic.beginDateYear == 2009 ? ' selected="selected"' : ''}>2009</option>
								<option ${practic.beginDateYear == 2010 ? ' selected="selected"' : ''}>2010</option>
								<option ${practic.beginDateYear == 2011 ? ' selected="selected"' : ''}>2011</option>
								<option ${practic.beginDateYear == 2012 ? ' selected="selected"' : ''}>2012</option>
								<option ${practic.beginDateYear == 2013 ? ' selected="selected"' : ''}>2013</option>
								<option ${practic.beginDateYear == 2014 ? ' selected="selected"' : ''}>2014</option>
								<option ${practic.beginDateYear == 2015 ? ' selected="selected"' : ''}>2015</option>
								<option ${practic.beginDateYear == 2016 ? ' selected="selected"' : ''}>2016</option>
							</select>
						</div>
					</div>
					<div class="col-lg-3 col-sm-3">
						<div class="input-practic">
							<label for="finish-month">Дата завершения</label> <select class="form-control" id="finish-month">
								<option ${practic.finishDateMonth == 1 ? ' selected="selected"' : ''}>Jan</option>
								<option ${practic.finishDateMonth == 2 ? ' selected="selected"' : ''}>Feb</option>
								<option ${practic.finishDateMonth == 3 ? ' selected="selected"' : ''}>Mar</option>
								<option ${practic.finishDateMonth == 4 ? ' selected="selected"' : ''}>Apr</option>
								<option ${practic.finishDateMonth == 5 ? ' selected="selected"' : ''}>May</option>
								<option ${practic.finishDateMonth == 6 ? ' selected="selected"' : ''}>June</option>
								<option ${practic.finishDateMonth == 7 ? ' selected="selected"' : ''}>July</option>
								<option ${practic.finishDateMonth == 8 ? ' selected="selected"' : ''}>Aug</option>
								<option ${practic.finishDateMonth == 9 ? ' selected="selected"' : ''}>Sept</option>
								<option ${practic.finishDateMonth == 10 ? ' selected="selected"' : ''}>Oct</option>
								<option ${practic.finishDateMonth == 11 ? ' selected="selected"' : ''}>Nov</option>
								<option ${practic.finishDateMonth == 12 ? ' selected="selected"' : ''}>Dec</option>
							</select>
						</div>
					</div>
					<div class="col-lg-3 col-sm-3">
						<div class="input-practic">
							<label for="finish-year">.</label> <select class="form-control" id="finish-year">
								<option ${practic.finishDateYear == 1985 ? ' selected="selected"' : ''}>1985</option>
								<option ${practic.finishDateYear == 1986 ? ' selected="selected"' : ''}>1986</option>
								<option ${practic.finishDateYear == 1987 ? ' selected="selected"' : ''}>1987</option>
								<option ${practic.finishDateYear == 1988 ? ' selected="selected"' : ''}>1988</option>
								<option ${practic.finishDateYear == 1989 ? ' selected="selected"' : ''}>1989</option>
								<option ${practic.finishDateYear == 1991 ? ' selected="selected"' : ''}>1991</option>
								<option ${practic.finishDateYear == 1992 ? ' selected="selected"' : ''}>1992</option>
								<option ${practic.finishDateYear == 1993 ? ' selected="selected"' : ''}>1993</option>
								<option ${practic.finishDateYear == 1994 ? ' selected="selected"' : ''}>1994</option>
								<option ${practic.finishDateYear == 1995 ? ' selected="selected"' : ''}>1995</option>
								<option ${practic.finishDateYear == 1996 ? ' selected="selected"' : ''}>1996</option>
								<option ${practic.finishDateYear == 1997 ? ' selected="selected"' : ''}>1997</option>
								<option ${practic.finishDateYear == 1998 ? ' selected="selected"' : ''}>1998</option>
								<option ${practic.finishDateYear == 1999 ? ' selected="selected"' : ''}>1999</option>
								<option ${practic.finishDateYear == 2001 ? ' selected="selected"' : ''}>2001</option>
								<option ${practic.finishDateYear == 2002 ? ' selected="selected"' : ''}>2002</option>
								<option ${practic.finishDateYear == 2003 ? ' selected="selected"' : ''}>2003</option>
								<option ${practic.finishDateYear == 2004 ? ' selected="selected"' : ''}>2004</option>
								<option ${practic.finishDateYear == 2005 ? ' selected="selected"' : ''}>2005</option>
								<option ${practic.finishDateYear == 2006 ? ' selected="selected"' : ''}>2006</option>
								<option ${practic.finishDateYear == 2007 ? ' selected="selected"' : ''}>2007</option>
								<option ${practic.finishDateYear == 2008 ? ' selected="selected"' : ''}>2008</option>
								<option ${practic.finishDateYear == 2009 ? ' selected="selected"' : ''}>2009</option>
								<option ${practic.finishDateYear == 2010 ? ' selected="selected"' : ''}>2010</option>
								<option ${practic.finishDateYear == 2011 ? ' selected="selected"' : ''}>2011</option>
								<option ${practic.finishDateYear == 2012 ? ' selected="selected"' : ''}>2012</option>
								<option ${practic.finishDateYear == 2013 ? ' selected="selected"' : ''}>2013</option>
								<option ${practic.finishDateYear == 2014 ? ' selected="selected"' : ''}>2014</option>
								<option ${practic.finishDateYear == 2015 ? ' selected="selected"' : ''}>2015</option>
								<option ${practic.finishDateYear == 2016 ? ' selected="selected"' : ''}>2016</option>
							</select>
						</div>
					</div>
				</div>

				<div class="input-practic">
					<label for="comment">Обязаности/Достижения</label>
					<textarea class="form-control" rows="5" id="comment">${practic.responsibilities}</textarea>
				</div>
				<div class="row">
					<div class="col-lg-6 col-sm-6">
						<div class="input-practic">
							<label for="usr">Ссылка на демо</label> <input type="text" class="form-control" id="usr" value="${practic.demo}">
						</div>
					</div>
					<div class="col-lg-6 col-sm-6">
						<div class="input-practic">
							<label for="usr">Исходный код</label> <input type="text" class="form-control" id="usr" value="${practic.src}">
						</div>
					</div>
				</div>
				<br>
			</div>
			<br>
		</c:forEach>
		<hr>
		<div style="text-align: center;">
			<a href="#" class="navbar-link"> + Добавить еще</a>
		</div>
		<hr>
		<div class="container text">
			<button type="submit" class="btn btn-info">
				<i class="fa fa-folder-open-o" aria-hidden="true"> </i>Save
			</button>
		</div>
	</div>
</div>