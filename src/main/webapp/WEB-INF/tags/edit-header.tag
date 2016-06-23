<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ attribute name="selected" required="true" type="java.lang.String" %>

<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
			<li ${selected == 'account'     ? 'class="active"' : ''}><a href="/edit/edit">Basis</a></li>
			<li ${selected == 'contacts'    ? 'class="active"' : ''}><a href="/edit/contacts">Contacts</a></li>
			<li ${selected == 'skills'      ? 'class="active"' : ''}><a href="/edit/skills">Technical skills</a></li>
			<li ${selected == 'practics'    ? 'class="active"' : ''}><a href="/edit/practics">Practic</a></li>
			<li ${selected == 'certificates'? 'class="active"' : ''}><a href="/edit/certificates">Certificates</a></li>
			<li ${selected == 'courses'	 	? 'class="active"' : ''}><a href="/edit/courses">Сourses</a></li>
			<li ${selected == 'education'   ? 'class="active"' : ''}><a href="/edit/education">Education</a></li>
			<li ${selected == 'languages'   ? 'class="active"' : ''}><a href="/edit/languages">Languages</a></li>
			<li ${selected == 'hobbies'     ? 'class="active"' : ''}><a href="/edit/hobbies">Hobbies</a></li>
			<li ${selected == 'info'   	 	? 'class="active"' : ''}><a href="/edit/info">Additional Info</a></li>
		</ul>