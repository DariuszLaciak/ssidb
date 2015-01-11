<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/headers.jsp" />
        <title>Wyszukiwarka prosta</title>
    </head>
    <body>
        <h1>Prosta wyszukiwarka mieszkań</h1>
        <div id='searchSimpleDiv'>
            <form id='searchSimpleForm'>
                <table class='content_table'>
                    <thead>
                        <tr><th>Cecha</th><th>Min</th><th>Max</th></tr>
                    </thead>
                    <tbody>
                        <tr><td>Cena</td><td><input type="text" size="30" name="price_min"/></td>
                            <td><input type="text" size="30" name="price_max"/></td></tr>
                        <tr><td>Metraż</td><td><input type="text" size="30" name="total_area_min"/></td>
                            <td><input type="text" size="30" name="total_area_max"/></td></tr>
                        <tr><td>Liczba pokoi</td><td><input type="text" size="30" name="n_of_rooms_min"/></td>
                            <td><input type="text" size="30" name="n_of_rooms_max"/></td></tr>
                        <tr><td>Piętro</td><td><input type="text" size="30" name="floor_min"/></td>
                            <td><input type="text" size="30" name="floor_max"/></td></tr>
                        <tr><td>Odległość od centrum</td><td><input type="text" size="30" name="distance_to_center_min"/></td>
                            <td><input type="text" size="30" name="distance_to_center_max"/></td></tr>
                        <tr><td>Odległość od przystanku</td><td><input type="text" size="30" name="distance_to_mpk_min"/></td>
                            <td><input type="text" size="30" name="distance_to_mpk_max"/></td></tr>
                        <tr><td colspan="3"><input type='button' onclick="searchSimple()" value='Szukaj'/></td></tr>
                    </tbody>
                </table>

            </form>
        </div>
        <%
        String url = request.getHeader("Referer");
                String page_url = url.substring(url.lastIndexOf("/")+1,url.length());
                if(page_url.equals("searchSimple.jsp")){    
        %>
        <p class='back'>Powrót do strony <a href="login.jsp">głównej</a></p>
        <%}%>
    </body>
</html>
