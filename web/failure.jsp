<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Failure Page</title>
    </head>
    <body>
        <h1>Nie zalogowano!</h1>
        <div>
            <p>Twój login i/lub hasło są niepoprawne!</p>
            <p>Powrót do strony <a href="login.jsp">logowania</a></p>
            <p>Jeśli nie jesteś jeszcze zarejestrowany, przejdź do formularza <a href="register.jsp">rejestracji</a></p>
        </div>
    </body>
</html>