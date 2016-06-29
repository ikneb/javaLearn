<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="panel panel-primary">
	<div class="panel-body">
		<img src="${account.largePhoto}" class="img-responsive" style="width: 100%" />
		<div class="text">
			<h1 class="text-canter" >
			<a style="color: black;" href="/edit">${account.fullName}</a>
			</h1>
			<p class="account">
				<strong>${account.city}, ${account.country}</strong>
			</p>
			<p class="account">
				<strong>Age:</strong> ${account.getAge()}<strong> Birthday: </strong>${account.birthDay}
			</p>
		</div>
	</div>
	<div class="list-group contacts">
		 <c:if test="${account.phone != null}">
            <a class="list-group-item" href="${account.phone}"><i class="fa fa-phone" aria-hidden="true"></i>${account.phone}</a>
        </c:if>
		<c:if test="${account.phone != null}">
				<a class="list-group-item" href="${account.email}"><i class="fa fa-envelope" aria-hidden="true"></i> ${account.email}</a>
        </c:if>
        <c:if test="${account.getContacts().skype != null}">
        		<a class="list-group-item" href="javascript:void(0);"><i class="fa fa-skype" aria-hidden="true"></i> ${account.getContacts().skype}</a>
        </c:if>
        <c:if test="${account.getContacts().vkontakte != null}">
        		<a target="_blank" class="list-group-item" href="${account.getContacts().vkontakte}"> <i class="fa fa-vk" aria-hidden="true"></i> ${account.getContacts().vkontakte}</a>
                </c:if>
        <c:if test="${account.getContacts().facebook != null}">
        		<a target="_blank" class="list-group-item" href="${account.getContacts().facebook}"><i class="fa fa-facebook" aria-hidden="true"></i> ${account.getContacts().facebook}</a>
                </c:if>
        <c:if test="${account.getContacts().linkedin != null}">
        		<a target="_blank" class="list-group-item" href="${account.getContacts().linkedin}"><i class="fa fa-linkedin" aria-hidden="true"></i> ${account.getContacts().linkedin}</a>
                </c:if>
        <c:if test="${account.getContacts().github != null}">
        		<a target="_blank" class="list-group-item" href="${account.getContacts().github}"><i class="fa fa-github" aria-hidden="true"></i> ${account.getContacts().github}</a>
        </c:if>
        <c:if test="${account.getContacts().stackoverflow != null}">
        		<a target="_blank" class="list-group-item" href="${account.getContacts().stackoverflow}"><i class="fa fa-stack-overflow" aria-hidden="true"></i> ${account.getContacts().stackoverflow}</a>
        </c:if>
		
		
		
	</div>
</div>