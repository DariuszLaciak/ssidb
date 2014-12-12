<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Common User Success Page</title>
    </head>
    <body>
        <h1>Witaj <bean:write name="User" property="login" />! </h1>
        <div>
            <p>Twój typ to: <bean:write name="User" property="type" />.</p>
            <p>Edytuj profil ( -> profile.jsp)</p>
            <p>Wyszukaj mieszkanie ( -> searchFuzzy.jsp)</p>
            <p><a href="login.jsp">Powrót do strony głównej</a></p>
            <p><a href="/logout">Wyloguj</a>( -> login.jsp, sesja wygasa)</p>
        </div>
    </body>
</html>
