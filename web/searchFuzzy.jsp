<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% try { if(session.getAttribute("user_type").equals("commonUser")) { %>
        <h1>Wyszukiwarka mieszkań</h1>
        możliwość “rozmytego” wyszukiwania
        * "rozmyte"
        - cena (tanie, przeciętne, drogie)
        - metraż (małe, srednie, duże)
        - elewacja/pietro (nisko, wysoko)
        - odległość od centrum (blisko, daleko)
        - odległość od najbliżej komunikacji miejskiej (blisko, daleko)
        * standardowe
        - liczba pokoi
        - ekspozycja
         Zatwierdź (success -> searchResult.jsp)
        <p>Powrót do strony <a href="login.jsp">głównej</a></p>
<% } else { %>
        
        <h1>Nie masz uprawnień by tu być!</h1>
        
        <% } } catch(NullPointerException e) { %>
            <h1>Nie jesteś zalogowany!</h1>
<% } %>