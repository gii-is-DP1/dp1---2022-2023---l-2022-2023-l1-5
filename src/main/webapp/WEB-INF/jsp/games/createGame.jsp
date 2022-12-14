<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="games">
    <h2>
        <c:if test="${game['new']}">New </c:if> Game
    </h2>
    <form:form modelAttribute="game" class="form-horizontal" id="add-game-form">
        <div class="form-group has-feedback">
            Which colour do you prefer to play with?
            <br>
            <input type="radio" name="colourName" value="red">Red
            <br>
            <input type="radio" name="colourName" value="blue" checked>Blue
            <br>
            <input type="radio" name="colourName" value="yellow" checked>Yellow
            <br>
            Do you want this game to be public?
            <input type="checkbox"  name="isPublic" />
        </div>
        <div class="form-group">
            <div class="col-sm-offset-0 ">
                <button class="btn btn-default" type="submit">Create Game</button>
            </div>
        </div>
    </form:form>
</petclinic:layout>