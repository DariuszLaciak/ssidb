<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/headers.jsp" />
        <title>Search Result Page</title>
    </head>
    <body>
        <h1>Mieszkania spełniające kryteria Twojego wyszukania:</h1>
            Tabela z kolumnami:
        -id oferty
        -cena
        -metraż
        -liczba pokoi
        -piętro
        -odległośc od centrum
        -odległość od MPK
        -ekspozycja
        -kontakt do ofertodawcy
    Dodaj filtr ( -> searchSimple.jsp/searchFuzzy.jsp ale uzupełniona)
    Powrót do strony wyszukiwań ( -> searchSimple.jsp/searchFuzzy.jsp)
    <p>Powrót do strony <a href="login.jsp">głównej</a></p>
    </body>
</html>