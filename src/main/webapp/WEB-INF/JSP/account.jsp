<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container">
	<resume:account-nav-bar />
</div>
<div class="container">
	<div class="row">
		<div class="col-lg-4  col-sm-6">
			<resume:account-main />
			<div class="hidden-xs">
				<resume:account-languages />
				<resume:account-hobbies />
				<resume:account-info />
			</div>
		</div>
		<div class="col-lg-8 col-sm-6">
			<resume:account-objective />
			<resume:account-skills />
			<resume:account-practic />
			<resume:account-certificates />
			<resume:account-cources />
			<resume:account-education />
		</div>
		<div class="col-xs-12 visible-xs-block">
			<resume:account-languages />
			<resume:account-hobbies />
			<resume:account-info />
		</div>
	</div>
</div>

