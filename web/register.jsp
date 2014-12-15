<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%!String admin = ""; %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/headers.jsp" />
        <title>JSP Page</title>
    </head>
    <body>
        <title>Rejestracja</title>
    </head>
<body>
    <div id='panel_login'>
        <div class='info_login'>
        <h1>Formularz rejestracyjny</h1>
        <% if(session.getAttribute("user_id") == null) {
        admin = "_admin"; %>
        <p>Powrót do strony <a href="login.jsp">głównej</a></p>
        <%}%>
        </div>
        <html:form action="/register">
            <table id='login'> 
                <tbody>
                    <tr>
                        <td colspan="2" class='errors'>
                            <bean:write name="User" property="error" filter="false"/>
                            <html:errors/>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>Typ użytkownika:</td>
                        <td>
                            <html:radio property="type" value="superUser" />deweloper
                            <html:radio property="type" value="commonUser" />użytkownik
                        </td>
                    </tr>
                    <tr>
                        <td>Login:</td>
                        <td><html:text property="login" /></td>
                    </tr>
                    <tr>
                        <td>Hasło:</td>
                        <td><html:password property="password" /></td>

                    <tr>
                    <tr>
                        <td>Powtórz hasło:</td>
                        <td><html:password property="retypedPassword" /></td>
                    <tr>
                    <tr>
                        <td>Email:</td>
                        <td><html:text property="email" /></td>
                    </tr>
                <td></td>
                <td><html:submit value="Rejestruj" /></td>
                </tr>
                </tbody>
            </table>  
        </html:form>
        
    </div>
</body>
</html>