<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Panel administratora</title>
    </head>
    <body>
        <h1>Witaj <bean:write name="User" property="login" />!</h1>
        <div>
            <p>Twój typ to: <bean:write name="User" property="type" />.</p>
            <p>Zarządzaj użytkownikami</p>
            <ul><p>Lista użytkowników</p>
                <li><p>Dodaj (-> register.jsp)</p></li>
                <li><p>Usuń (albo guzik przy liście, albo pole z id użytkownika do usunięcia)</p></li>
                <li><p>Edytuj (-> register.jsp, ale uzupełnione)</p></li>
            </ul>
            <p><a href="login.jsp">Powrót do strony głównej</a></p>
            <p><a href="/logout">Wyloguj</a>  ( -> login.jsp, sesja wygasa)</p>
        </div>
    </body>
</html>

