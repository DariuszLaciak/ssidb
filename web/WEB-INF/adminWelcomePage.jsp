<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="headers.jsp" />
        <title>Panel administratora</title>
    </head>
    <body>
         <% if(session.getAttribute("user_type").equals("admin")) { %>
         <div id='content'>
            <div id='user_menu'>
            <h1>Witaj <bean:write name="UserDTO" property="login" />!</h1>
                <p><a id='look_offers'>Lista ofert</a></p>
                <p><a id='manage_users'>Zarządzaj użytkownikami</a></p>
                <p><a id='logout'>Wyloguj</a></p>
            </div>
            <div id='user_content'>

            </div>
        </div>
        <% }
        else { %>
        <div id='content'>
            <h1>Nie masz uprawnień by tu być!</h1>
        </div>
        <% } %>
    </body>
</html>

