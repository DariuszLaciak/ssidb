<%-- 
    Document   : edit_dane
    Created on : 2015-01-11, 13:27:10
    Author     : Darek
--%>

<%@page import="com.ssidb.dto.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% UserDTO user = (UserDTO) session.getAttribute("user_data");%>
<h1>Edytuj swoje dane</h1>
<div id='edit_dane_div'>
    <form id='edit_dane_form'>
        <table class='content_table'> 
            <tbody>
                <tr>
                    <td>Stare Hasło:</td>
                    <td><input type='password' name="old_password" /></td>
                </tr>
                <tr>
                    <td>Nowe Hasło:</td>
                    <td><input type='password' name="new_password" /></td>
                </tr>
                <tr>
                    <td>Powtórz hasło:</td>
                    <td><input type='password' name="retypedPassword" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type='text' name="email" value='<%=user.getEmail()%>'/></td>
                </tr>
                <tr>
                    <td>Telefon:</td>
                    <td><input type='text' name="phone" value='<%=user.getPhone()%>' /></td>
                </tr>
                <tr>
                    <td>Adres:</td>
                    <td><input type='text' name="address" value='<%=user.getAddress()%>' /></td>
                </tr>
            <td></td>
            <td><input type='button' onclick="edit_dane()" value="Edytuj" /></td>
            </tr>
            </tbody>
        </table>  
    </form>
</div>