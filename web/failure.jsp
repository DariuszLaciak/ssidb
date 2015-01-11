<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/headers.jsp" />
        <title>Failure Page</title>
    </head>
    <body>
        <div id='login_fail'>
        <h1>Nie zalogowano!</h1>
            <p>Twój login i/lub hasło są niepoprawne!</p>
            <p>Powrót do strony <a href="login.jsp">logowania</a></p>
            <p>Jeśli nie jesteś jeszcze zarejestrowany, przejdź do formularza <a href="register.jsp">rejestracji</a></p>
        </div>
    </body>
</html>