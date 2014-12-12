<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%
   response.setHeader( "Pragma", "no-cache" );
   response.setHeader( "Cache-Control", "no-cache" );
   response.setDateHeader( "Expires", 0 );
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Logowanie</h1>
        Jeśli nie jesteś jeszcze zarejestrowany przejdź do formularza 
        <a href="register.jsp">Rejestracja</a>
        <html:form action="/login">
            <table>
                <tbody>
                    <tr>
                        <td>Login:</td>
                        <td><html:text property="login"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Hasło:</td>
                        <td><html:password property="password"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><html:submit value="Loguj" /></td>
                    </tr>
                </tbody>
            </table>
        </html:form>
        Jeśli nie chcesz się rejestrować ani logować 
        <a href="searchSimple.jsp">Wyszukuj jako gość</a></br>
        </br>
        </br>
        <div>
            Informacja o firmie, jakaś fotka</br>
            Informacja dla dewelopera (jesli chcesz dodac swoją ofertę…)</br>
            Informacja do przeglądacza strony (jesli chcesz wyszukiwać zgodnie ze swoimi preferencjami…)</br>
        </div>
    </body>
</html>