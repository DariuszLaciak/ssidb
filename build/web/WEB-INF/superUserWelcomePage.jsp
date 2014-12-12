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
        <div id='content'>
            <div id='user_menu'>
        <h1>Witaj <bean:write name="User" property="login" />!</h1>
        
            <p><a href='offer.jsp'>Dodaj ofertę</a></p>
            <p><a href='#'>Edytuj ofertę (albo guzik przy liście, albo pole z id oferty do usunięcia)</a></p>
            <p><a href='#'>Twoje oferty</a></p>
            <p><a href='searchSimple.jsp'>Wyszukaj mieszkanie</a></p>
            <p><a href="login.jsp">Powrót do strony głównej</a></p>
            <p><a href="/logout">Wyloguj</a></p>
        
            </div>
         <div id='user_content'>

            </div>
        </div>
    </body>
</html>
