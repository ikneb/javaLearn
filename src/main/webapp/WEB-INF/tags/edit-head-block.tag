<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" 		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" 	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume"	tagdir="/WEB-INF/tags"%>

<ul id="tabs" class="nav nav-tabs">
			<li><a href="/edit/edit">Basis</a></li>
			<li class="active"><a href="/edit/contacts">Contacts</a></li>
			<li ><a href="/edit/skills">Technical skills</a></li>
			<li><a href="/edit/practics">Practic</a></li>
			<li><a href="/edit/certificates">Certificates</a></li>
			<li><a href="/edit/courses">Сourses</a></li>
			<li><a href="/edit/education">Education</a></li>
			<li><a href="/edit/languages">Languages</a></li>
			<li><a href="/edit/hobbies">Hobbies</a></li>
			<li <c:if></c:if>><a href="/edit/info">Additional Info</a></li>
		</ul>
