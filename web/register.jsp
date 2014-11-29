<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>JSP Page</title>
    </head>
    <body>
        <title>Rejestracja</title>
    </head>
<body>
    <h1>Formularz rejestracyjny</h1>
    <html:form action="/register">
        <table border="0"> 
            <tbody>
                <tr>
                    <td colspan="2">
                        <bean:write name="User" property="error" filter="false"/>
                    </td>
                    <html:errors/>
                </tr>
                <tr>
                    <td>Login:</td>
                    <td><html:text property="login" /></td>
                </tr>
                <tr>
                    <td>Hasło:</td>
                    <td><html:password property="password" /></td>
                <tr>
                    <td>Typ użytkownika:</td>
                    <td>
                    <html:radio property="type" value="superUser" />deweloper
                    <html:radio property="type" value="commonUser" />użytkownik
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><html:submit value="Rejestruj" /></td>
                </tr>
            </tbody>
        </table>  
    </html:form>
</body>
</html>