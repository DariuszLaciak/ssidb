﻿--------------------------------------------------------
--  Funkcja przynależności typu L
--------------------------------------------------------

CREATE OR REPLACE FUNCTION FP_KL 
(
  X IN FLOAT 
, A IN FLOAT 
, B IN FLOAT 
) RETURN NUMBER IS
Y NUMBER(6,5);

BEGIN
  IF (X <= A) THEN Y := 1.0;
  ELSIF(X > B) THEN Y := 0.0;
  ELSE Y := (B-X) / (B-A);
  END IF;
  RETURN Y;
END FP_KL;
/

--------------------------------------------------------
--  Funkcja przynależności typu Gamma
--------------------------------------------------------

CREATE OR REPLACE FUNCTION FP_KG 
(
  X IN FLOAT 
, C IN FLOAT 
, D IN FLOAT 
) RETURN NUMBER IS
Y NUMBER(6,5);

BEGIN
  IF (X <= C) THEN Y := 0.0;
  ELSIF(X > D) THEN Y := 1.0;
  ELSE Y := (X-C) / (D-C);
  END IF;
  RETURN Y;
END FP_KG;
/

--------------------------------------------------------
--  Funkcja przynależności trapezowa
--------------------------------------------------------

CREATE OR REPLACE FUNCTION FP_TR 
(
  X IN FLOAT 
, A IN FLOAT 
, B IN FLOAT 
, C IN FLOAT 
, D IN FLOAT 
) RETURN NUMBER IS
Y NUMBER(6,5);

BEGIN
  IF ((X <= A) OR (X > D)) THEN Y := 0.0;
  ELSIF(X < B) THEN Y := (X-A) / (B-A);
  ELSIF(X < C) THEN Y := 1.0;
  ELSE Y := (D-X) / (D-C);
  END IF;
  RETURN Y;
END FP_TR;
/

--------------------------------------------------------
--  Funkcja zwraca tanie mieszkania (dla użytkownika)
--------------------------------------------------------

CREATE OR REPLACE FUNCTION TANIE 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  open my_cursor FOR select * from offer 
  where FP_KL(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number)) > 0
  order by FP_KL(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number)) desc;
  RETURN my_cursor;
END TANIE;
