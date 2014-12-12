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
         <div id='content'>
            <div id='user_menu'>
        <h1>Witaj <bean:write name="User" property="login" />!</h1>
        
            
           
        <p><a href='#'>Lista użytkowników</a></p>
                <p><a href='#'>Dodaj (-> register.jsp)</a></p>
               <p><a href='#'>Usuń (albo guzik przy liście, albo pole z id użytkownika do usunięcia)</a></p>
                <p><a href='#'>Edytuj (-> register.jsp, ale uzupełnione)</a></p>
            
            <p><a href="login.jsp">Powrót do strony głównej</a></p>
            <p><a href="/logout">Wyloguj( -> login.jsp, sesja wygasa)</a>  </p>
        </div>
            <div id='user_content'>

            </div>
        </div>
    </body>
</html>

