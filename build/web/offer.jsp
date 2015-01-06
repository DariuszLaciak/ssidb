<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/headers.jsp" />
        <title>Offer Form</title>
    </head>
    <body>
        <html:form action="/offer">
            <table class='content_table'> 
                <tbody>
                    <tr>
                        <td>Cena (w tys. PLN):</td>
                        <td><html:text property="price"/></td>
                    </tr>
                    <tr>
                        <td>Metraż (w m<sup>2</sup>):</td>
                        <td><html:text property="total_area"/></td>
                    </tr>
                    <tr>
                        <td>Liczba pokoi:</td>
                        <td><html:text property="n_of_rooms"/></td>
                    </tr>
                    <tr>
                        <td>Piętro (liczba arabska):</td>
                        <td><html:text property="floor"/></td>
                    <tr>
                    <tr>
                        <td>Odległość do centrum (w km):</td>
                        <td><html:text property="distance_to_center"/></td>
                    </tr>
                    <tr>
                        <td>Odległość do komunikacji miejskiej (w m):</td>
                        <td><html:text property="distance_to_MPK"/></td>
                    </tr>
                    <tr>
                        <td>Ekspozycja (N, S, W, E):</td>
                        <td><html:text property="exposition"/></td>
                    </tr>
                    <tr>
                        <td>Adres:</td>
                        <td><html:text property="address"/></td>
                    </tr>
                <td></td>
                <td><html:submit value="Dodaj ofertę"/></td>
            </tr>
        </tbody>
    </table>  
</html:form>
<p><a href="superUserWelcomePage.jsp">Powrót</a></p>
</body>
</html>
