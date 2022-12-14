<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="users">
    <h1 style = "width: 500px; position: absolute; right: 28%;"><c:if test="${user['new']}">New </c:if> User</h1>
    <br>
    <br>
    <form:form modelAttribute="user" class="form-horizontal" id="add-user-form">
        <div class="form-group has-feedback">
            <petclinic:inputField label="Email" name="email"/>
            <petclinic:inputField label="Username" name="username"/>
            <petclinic:inputField label="Password" name="password"/>
        </div>
        <div class="form-group" style="bottom: 50%;">
            <div class="col-sm-offset-2 col-sm-10">
                <button class="btn btn-default" type="submit" style="height: 45px; width: 100px; position: absolute; right: 66%;">Sign in</button>
            </div>
        </div>
    </form:form>
</petclinic:layout>
