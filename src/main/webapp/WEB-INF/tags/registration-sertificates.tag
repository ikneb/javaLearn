<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="tab-pane" id="certificates">
	<h3 class="center">Сертификаты</h3>
	<hr>

	<div style="text-align: center;"> 
			
				<div class="frame-certificates" >
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<br>
					<image src="/media/certificates/0b15e8a5-f311-4105-8628-b48f052ca5ce-sm.jpg" />
				</div>
			
			
		
			
				<div class="frame-certificates ">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<br>
					<image src="/media/certificates/0b15e8a5-f311-4105-8628-b48f052ca5ce-sm.jpg" />
				</div>
			
	</div>
	<hr>
	<div style="text-align: center;">
	<a class="navbar-link" data-target="#myModal" data-toggle="modal"> + Добавить еще</a>
	</div>
	<hr>
	<div class="container text">
		<button type="submit" class="btn btn-info">
			<i class="fa fa-folder-open-o" aria-hidden="true"> </i>Save
		</button>
	</div>
	
</div>
<resume:modal-loader/>