<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Offer Form</title>
    </head>
    <body>
        <h1>Formularz oferty</h1>
        <html:form action="/offer">
            <table> 
                <tbody>
                    <tr>
                        <td>Cena:</td>
                        <td><html:text property="price" /></td>
                    </tr>
                    <tr>
                        <td>Metraż:</td>
                        <td><html:text property="total_area" /></td>
                    </tr>
                    <tr>
                        <td>Liczba pokoi:</td>
                        <td><html:text property="n_of_rooms" /></td>
                    </tr>
                    <tr>
                        <td>Piętro:</td>
                        <td><html:text property="floor" /></td>
                    <tr>
                    <tr>
                        <td>Odległość do centrum:</td>
                        <td><html:text property="distance_to_center" /></td>
                    </tr>
                    <tr>
                        <td>Odległość do komunikacji miejskiej:</td>
                        <td><html:text property="distance_to_MPK" /></td>
                    </tr>
                    <tr>
                        <td>Ekspozycja:</td>
                        <td><html:text property="exposition" /></td>
                    </tr>
                    <tr>
                        <td>Adres:</td>
                        <td><html:text property="address" /></td>
                    </tr>
                <td></td>
                <td><html:submit value="Dodaj ofertę" />(failure -> offer.jsp, success -> superUserWelcomePage.jsp)</td>
            </tr>
        </tbody>
    </table>  
</html:form>
<p><a href="superUserWelcomePage.jsp">Powrót</a></p>
</body>
</html>
