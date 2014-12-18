<%-- 
    Document   : search_fuzzy
    Created on : 2014-12-18, 21:38:36
    Author     : Darek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% try { if(session.getAttribute("user_type").equals("commonUser")) { 
%>
<h1>Wyszukiwanie mieszkań</h1>
<h3>Rozmyty algorytm</h3>
<form id='search_fuzzy_form'>
    <table class='content_table' id='fuzzy_search_table'>
        <tbody>
            <tr>
                <th class='label_table' colspan="3">Cena</th>
            </tr>
            <tr>
                <td>Niska<input type='radio' name='price' value='low'/></td>
                <td>Przeciętna<input type='radio' name='price' value='average'/></td>
                <td>Wysoka<input type='radio' name='price' value='high'/></td>
            </tr>
            <tr>
                <th class='label_table' colspan="3">Powierzchnia</th>
            </tr>
            <tr>
                <td>Mała<input type='radio' name='area' value='low'/></td>
                <td>Średnia<input type='radio' name='area' value='average'/></td>
                <td>Duża<input type='radio' name='area' value='high'/></td>
            </tr>
            <tr>
                <th class='label_table' colspan="3">Piętro</th>
            </tr>
            <tr>
                <td>Nisko<input type='radio' name='floor' value='low'/></td>
                <td>Pośrodku<input type='radio' name='floor' value='average'/></td>
                <td>Wysoko<input type='radio' name='floor' value='high'/></td>
            </tr>
            <tr>
                <th class='label_table' colspan="3">Odległość do centrum</th>
            </tr>
            <tr>
                <td>Blisko<input type='radio' name='center' value='low'/></td>
                <td>Umiarkowanie<input type='radio' name='center' value='average'/></td>
                <td>Daleko<input type='radio' name='center' value='high'/></td>
            </tr>
            <tr>
                <th class='label_table' colspan="3">Odległość do przystanku MPK</th>
            </tr>
            <tr>
                <td>Blisko<input type='radio' name='mpk' value='low'/></td>
                <td>Umiarkowanie<input type='radio' name='mpk' value='average'/></td>
                <td>Daleko<input type='radio' name='mpk' value='high'/></td>
            </tr>
            <tr>
                <td colspan="3"><input type='button' value='Wyszukaj' onclick="searchFuzzy()"/></td>
            </tr>
        </tbody>
    </table>
</form>


<% } else { %>
        
        <h1>Nie masz uprawnień by tu być!</h1>
        
        <% } } catch(NullPointerException e) { %>
            <h1>Nie jesteś zalogowany!</h1>
<% } %>