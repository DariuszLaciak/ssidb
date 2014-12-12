<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Super User success Page</title>
    </head>
    <body>
        <h1>Witaj <bean:write name="User" property="login" />!</h1>
        <div>
            <p>Twój typ to: <bean:write name="User" property="type" />.</p>
            Zarządzaj ofertami
            Lista ofert
            <p>Dodaj ofertę ( -> offer.jsp)</p>
            <p>Edytuj ofertę (albo guzik przy liście, albo pole z id oferty do usunięcia)</p>
            <p>Twoje oferty</p>
            <p>Wyszukaj mieszkanie ( -> searchSimple.jsp)</p>
            <p><a href="login.jsp">Powrót do strony głównej</a></p>
            <p><a href="/logout">Wyloguj</a></p>
        </div>
    </body>
</html>
