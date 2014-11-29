<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Success Page</title>
    </head>
    <body>
        <h1>Zalogowano poprawnie!</h1>
        <div>
            <p>Twój login to: <bean:write name="User" property="login" />.</p>
            <p>Twój typ to: <bean:write name="User" property="type" />.</p>
        </div>
    </body>
</html>