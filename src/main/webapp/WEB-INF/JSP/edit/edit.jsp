<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="resume" tagdir="/WEB-INF/tags" %>

<div class="container" >
		<div id="content">
			<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
				<li class="active"><a href="#basis" data-toggle="tab">Basis</a></li>
				<li><a href="#contacts" data-toggle="tab">Contacts</a></li>
				<li><a href="#skills" data-toggle="tab">Technical skills</a></li>
				<li><a href="#practic" data-toggle="tab">Practic</a></li>
				<li><a href="#certificates" data-toggle="tab">Certificates</a></li>
				<li><a href="#cources" data-toggle="tab">Сourses</a></li>
				<li><a href="#education" data-toggle="tab">Education</a></li>
				<li><a href="#languages" data-toggle="tab">Languages</a></li>
				<li><a href="#hobbies" data-toggle="tab">Hobbies</a></li>
				<li><a href="#info" data-toggle="tab">Additional Info</a></li>
			</ul>
			<div class="tab-content brd">
				<resume:registration-basik/>
				<resume:registration-contacts/>
				<resume:registration-skills/>
				<resume:registration-practic/>
				<resume:registration-sertificates/>
				<resume:registration-courses/>	
				<resume:registration-education/>
				<resume:registration-languages/>	
				<resume:registration-hobbies/>
				<resume:registration-info/>
				
			</div>
		</div>
	</div>