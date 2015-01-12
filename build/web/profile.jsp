<%@page import="com.ssidb.dto.UserDTO"%>
<%@page import="com.ssidb.dto.Profile"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%!Profile user_profile;
UserDTO user;%>
<!DOCTYPE html>
<% try { if(session.getAttribute("user_type").equals("commonUser")) { 
        user = (UserDTO) session.getAttribute("user_data");
        user_profile = user.getProfile();
%>
        <h1>Edycja współczynników rozmycia</h1>
        <h3>Zmiana na własną odpowiedzialność!!</h3>
        <form id='profile_edit_form' >
            <table class='content_table'> 
                <tbody>
                    <tr>
                        <th colspan="4" class='label_table'>Cena [w tys. PLN]</th>
                    </tr>
                    <tr>
                        <th>poniżej jest mała</th>
                        <th>powyżej nie jest mała</th>
                        <th>poniżej nie jest duża</th>
                        <th>powyżej jest duża</th>
                    </tr>
                    <tr class='form_inputs'>
                        <td><input type='text' name="price_a" size='4' value='<%=user_profile.getPrice_a() %>'/></td>
                        <td><input type='text' name="price_b" size='4' value='<%=user_profile.getPrice_b() %>' /></td>
                        <td><input type='text' name="price_c" size='4' value='<%=user_profile.getPrice_c() %>' /></td>
                        <td><input type='text' name="price_d" size='4' value='<%=user_profile.getPrice_d() %>' /></td>
                        
                    </tr>
                    
                    <tr>
                        <th colspan="4" class='label_table'>Metraż [w m<sup>2</sup>]</th>
                    </tr>
                    <tr>
                        <th>poniżej jest mały</th>
                        <th>powyżej nie jest mały</th>
                        <th>poniżej nie jest duży</th>
                        <th>powyżej jest duży</th>
                    </tr>
                    <tr class='form_inputs'>
                        <td><input type='text' name="area_a" size='4'  value='<%=user_profile.getArea_a() %>'/></td>
                        <td><input type='text' name="area_b" size='4'  value='<%=user_profile.getArea_b() %>' /></td>
                        <td><input type='text' name="area_c" size='4'  value='<%=user_profile.getArea_c() %>' /></td>
                        <td><input type='text' name="area_d" size='4'  value='<%=user_profile.getArea_d() %>' /></td>
                    </tr>
                    
                    <tr>
                        <th colspan="4" class='label_table'>Elewacja [w piętrach]</th>
                    </tr>
                    <tr>
                        <th>poniżej jest nisko</th>
                        <th>powyżej nie jest nisko</th>
                        <th>poniżej nie jest wysoko</th>
                        <th>powyżej jest wysoko</th>
                        
                    </tr>
                    <tr class='form_inputs'>
                        <td><input type='text' name="floor_a" size='4'  value='<%=user_profile.getFloor_a() %>'/></td>
                        <td><input type='text' name="floor_b" size='4' value='<%=user_profile.getFloor_b() %>'/></td>
                        <td><input type='text' name="floor_c" size='4' value='<%=user_profile.getFloor_c() %>'/></td>
                        <td><input type='text' name="floor_d" size='4' value='<%=user_profile.getFloor_d() %>'/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="4" class='label_table'>Odległość od centrum [w km]</th>
                    </tr>
                    <tr>
                        <th>poniżej jest blisko</th>
                        <th>powyżej nie jest blisko</th>
                        <th>poniżej nie jest daleko</th>
                        <th>powyżej jest daleko</th>
                    </tr>
                    <tr class='form_inputs'>
                        <td><input type='text' name="city_dist_a" size='4' value='<%=user_profile.getCity_dist_a() %>'/></td>
                        <td><input type='text' name="city_dist_b" size='4' value='<%=user_profile.getCity_dist_b() %>'/></td>
                        <td><input type='text' name="city_dist_c" size='4' value='<%=user_profile.getCity_dist_c() %>'/></td>
                        <td><input type='text' name="city_dist_d" size='4' value='<%=user_profile.getCity_dist_d() %>'/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="4" class='label_table'>Odległość od komunikacji miejskiej [w m]</th>
                    </tr>
                    <tr>
                        <th>poniżej jest blisko</th>
                        <th>powyżej nie jest blisko</th>
                        <th>poniżej nie jest daleko</th>
                        <th>powyżej jest daleko</th>
                    </tr>
                    <tr class='form_inputs'>
                        <td><input type='text' name="mpk_dist_a" size='4' value='<%=user_profile.getMpk_dist_a() %>'/></td>
                        <td><input type='text' name="mpk_dist_b" size='4' value='<%=user_profile.getMpk_dist_b() %>'/></td>
                        <td><input type='text' name="mpk_dist_c" size='4' value='<%=user_profile.getMpk_dist_c() %>'/></td>
                        <td><input type='text' name="mpk_dist_d" size='4' value='<%=user_profile.getMpk_dist_d() %>'/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="4" id='user_profile_edit'><input onclick='saveProfile()' type='button' value="Zapisz" /> </th>
                </tr>
        </tbody>
    </table>  
</form>
<% } else { %>
        
        <h1>Nie masz uprawnień by tu być!</h1>
        
        <% } } catch(NullPointerException e) { %>
            <h1>Nie jesteś zalogowany!</h1>
<% } %>
        
