<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="headers.jsp" />
        <title>Common User Success Page</title>
    </head>
    <body>
        <% if(session.getAttribute("user_type").equals("commonUser")) { %>
        <div id='content'>
            <div id='user_menu'>
                <h1>Witaj <bean:write name="User" property="login" />! </h1>

                <p><a id='edit_dane' class='first'>Edytuj swoje dane</a></p>
                <p><a id='edit_profile'>Edytuj profil</a></p>
                <p><a id='search_fuzzy'>Wyszukaj mieszkanie(rozmyte)</a></p>
                <p><a id='search_not_fuzzy'>Wyszukaj mieszkanie(proste)</a></p>
                <p><a id='look_offers'>Przeglądaj wszystkie oferty</a></p>
                
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