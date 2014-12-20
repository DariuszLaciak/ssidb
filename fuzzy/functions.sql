--------------------------------------------------------
--  File created - sobota-grudnia-20-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FP_KG
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
--  DDL for Function FP_KL
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
--  DDL for Function FP_TR
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
--  DDL for Function PRICE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION PRICE
(
  TYP IN VARCHAR
  ,ID_number IN NUMBER
  ) RETURN SYS_REFCURSOR IS
  my_cursor SYS_REFCURSOR;
BEGIN
IF TYP='low' THEN my_cursor:= price_low(id_number);
ELSIF TYP='avg' THEN my_cursor:= price_avg(id_number);
ELSE my_cursor:= price_high(id_number);
END IF;
  
  RETURN my_cursor;
END PRICE;

/
--------------------------------------------------------
--  DDL for Function PRICE_AVG
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION PRICE_AVG
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  open my_cursor FOR select * from offer 
  where FP_TR(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number),(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number)) > 0
  order by FP_TR(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number),(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number)) desc;
  RETURN my_cursor;
END PRICE_AVG;

/
--------------------------------------------------------
--  DDL for Function PRICE_HIGH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION PRICE_HIGH
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  open my_cursor FOR select * from offer 
  where FP_KG(price,(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number)) > 0
  order by FP_KG(price,(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number)) desc;
  RETURN my_cursor;
END PRICE_HIGH;

/
--------------------------------------------------------
--  DDL for Function PRICE_LOW
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION PRICE_LOW 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  open my_cursor FOR select * from offer 
  where FP_KL(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number)) > 0
  order by FP_KL(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number)) desc;
  RETURN my_cursor;
END PRICE_LOW;

/
