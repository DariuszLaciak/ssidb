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
        <h1>Witaj <bean:write name="User" property="login" />!</h1>
        
            
           
           
        <p><a id='list_users'>Lista użytkowników</a></p>
                <p><a id='add_user'>Dodaj użytkownika</a></p>
               <p><a id='delete_user'>Usuń użytkownika</a></p>
                <p><a id='edit_user'>Edytuj użytkownika</a></p>
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

