<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/headers.jsp" />
        <title>Wyszukiwarka prosta</title>
    </head>
    <body>
        <h1>Prosta wyszukiwarka mieszkań</h1>
        Wyszukiwarka mieszkań (wersja dla gości):
        -brak “rozmytego” wyszukiwania
        -cena (min, max)
        -metraż(min,max)
        -liczba pokoi (min,max)
        -pietro(min,max)
        Zatwierdź (success -> searchResult.jsp)
        <p>Powrót do strony <a href="login.jsp">głównej</a></p>
    </body>
</html>
