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
        <div id='content'>
            <div id='user_menu'>
                <h1>Witaj <bean:write name="User" property="login" />! </h1>


                <p><a href='#'>Edytuj profil ( -> profile.jsp)</a></p>
                <p><a href='#'>Wyszukaj mieszkanie ( -> searchFuzzy.jsp)</a></p>
                <p><a href="login.jsp">Powrót do strony głównej</a></p>
                <p><a href="/logout">Wyloguj( -> login.jsp, sesja wygasa)</a></p>

            </div>
            <div id='user_content'>

            </div>
        </div>
    </body>
</html>
