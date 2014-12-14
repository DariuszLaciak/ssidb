<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<% try { if(session.getAttribute("user_type").equals("commonUser")) { %>
        <h1>Profil użytkownika</h1>
        <html:form action="/profile">
            <table class='content_table'> 
                <tbody>
                    <tr>
                        <th colspan="3">Cena [w tys. PLN]</th>
                    </tr>
                    <tr>
                        <th>tanie</th>
                        <th>przeciętne</th>
                        <th>drogie</th>
                    </tr>
                    <tr>
                        <td>min<html:text property="tanie_min" /></td>
                        <td>min<html:text property="przecietne_min" /></td>
                        <td>min<html:text property="drogie_min" /></td>
                    </tr>
                    <tr>
                        <td>max<html:text property="tanie_max" /></td>
                        <td>max<html:text property="przecietne_max" /></td>
                        <td>max<html:text property="drogie_max" /></td>
                    </tr>
                    <tr>
                        <th colspan="3">Metraż [w m2]</th>
                    </tr>
                    <tr>
                        <th>małe</th>
                        <th>średnie</th>
                        <th>duże</th>
                    </tr>
                    <tr>
                        <td><html:text property="male_min" /></td>
                        <td><html:text property="srednie_min" /></td>
                        <td><html:text property="duze_min" /></td>  
                    </tr>
                    <tr>
                        <td><html:text property="male_max" /></td>
                        <td><html:text property="srednie_max" /></td>
                        <td><html:text property="duze_max" /></td>
                    </tr>
                    <tr>
                        <th colspan="3">Elewacja [w piętrach]</th>
                    </tr>
                    <tr>
                        <th>nisko</th>
                        <th>wysoko</th>
                    </tr>
                    <tr>
                        <td><html:text property="nisko_min" /></td>
                        <td><html:text property="wysoko_min" /></td>
                    </tr>
                    <tr>
                        <td><html:text property="nisko_max" /></td>
                        <td><html:text property="wysoko_max" /></td>
                    </tr>
                    <tr>
                        <th colspan="3">Odległość od centrum [w km]</th>
                    </tr>
                    <tr>
                        <th>blisko</th>
                        <th>daleko</th>
                    </tr>
                    <tr>
                        <td><html:text property="c_blisko_min" /></td>
                        <td><html:text property="c_daleko_min" /></td>
                    <tr>
                    </tr>
                    <tr>
                        <td><html:text property="c_blisko_max" /></td>
                        <td><html:text property="c_daleko_max" /></td>
                    </tr>
                    <tr>
                        <th colspan="3">Odległość od komunikacji miejskiej [w m]</th>
                    </tr>
                    <tr>
                        <th>blisko</th>
                        <th>daleko</th>
                    </tr>
                    <tr>
                        <td><html:text property="mpk_blisko_min" /></td>
                        <td><html:text property="mpk_daleko_min" /></td>
                    </tr>
                    <tr>
                        <td><html:text property="mpk_blisko_max" /></td>
                        <td><html:text property="mpk_daleko_max" /></td>
                    </tr>
                <tr></tr>
                <th colspan="3"><html:submit value="Zapisz" /> (failure -> profile.jsp, success -> commonUserWelcomePage.jsp)</th>
        </tbody>
    </table>  
</html:form>
<% } else { %>
        
        <h1>Nie masz uprawnień by tu być!</h1>
        
        <% } } catch(NullPointerException e) { %>
            <h1>Nie jesteś zalogowany!</h1>
<% } %>
        
