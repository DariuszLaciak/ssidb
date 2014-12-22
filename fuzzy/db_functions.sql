--------------------------------------------------------
--  File created - Monday-December-22-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function AREA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."AREA" 
(
  TYP IN VARCHAR
  ,ID_number IN NUMBER
  ) RETURN SYS_REFCURSOR IS
  my_cursor SYS_REFCURSOR;
BEGIN
IF TYP='low' THEN my_cursor:= area_low(id_number);
ELSIF TYP='avg' THEN my_cursor:= area_avg(id_number);
ELSE my_cursor:= area_high(id_number);
END IF;
  
  RETURN my_cursor;
END AREA;

/
--------------------------------------------------------
--  DDL for Function AREA_AVG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."AREA_AVG" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_TR(total_area,(Select area_a from profile where user_id=ID_number),(Select area_b from profile where user_id=ID_number),(Select area_c from profile where user_id=ID_number),(Select area_d from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END AREA_AVG;

/
--------------------------------------------------------
--  DDL for Function AREA_HIGH
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."AREA_HIGH" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_KG(total_area,(Select area_c from profile where user_id=ID_number),(Select area_d from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END AREA_HIGH;

/
--------------------------------------------------------
--  DDL for Function AREA_LOW
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."AREA_LOW" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_KL(total_area,(Select area_a from profile where user_id=ID_number),(Select area_b from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END AREA_LOW;

/
--------------------------------------------------------
--  DDL for Function CITY
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."CITY" 
(
  TYP IN VARCHAR
  ,ID_number IN NUMBER
  ) RETURN SYS_REFCURSOR IS
  my_cursor SYS_REFCURSOR;
BEGIN
IF TYP='low' THEN my_cursor:= city_low(id_number);
ELSIF TYP='avg' THEN my_cursor:= city_avg(id_number);
ELSE my_cursor:= city_high(id_number);
END IF;
  
  RETURN my_cursor;
END CITY;

/
--------------------------------------------------------
--  DDL for Function CITY_AVG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."CITY_AVG" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_TR(distance_to_center,(Select city_dist_a from profile where user_id=ID_number),(Select city_dist_b from profile where user_id=ID_number),(Select city_dist_c from profile where user_id=ID_number),(Select city_dist_d from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END CITY_AVG;

/
--------------------------------------------------------
--  DDL for Function CITY_HIGH
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."CITY_HIGH" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_KG(distance_to_center,(Select city_dist_c from profile where user_id=ID_number),(Select city_dist_d from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END CITY_HIGH;

/
--------------------------------------------------------
--  DDL for Function CITY_LOW
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."CITY_LOW" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_KL(distance_to_center,(Select city_dist_a from profile where user_id=ID_number),(Select city_dist_b from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END CITY_LOW;

/
--------------------------------------------------------
--  DDL for Function FLOOR_AVG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."FLOOR_AVG" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_TR(floor,(Select floor_a from profile where user_id=ID_number),(Select floor_b from profile where user_id=ID_number),(Select floor_c from profile where user_id=ID_number),(Select floor_d from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END FLOOR_AVG;

/
--------------------------------------------------------
--  DDL for Function FLOOR_FCT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."FLOOR_FCT" 
(
  TYP IN VARCHAR
  ,ID_number IN NUMBER
  ) RETURN SYS_REFCURSOR IS
  my_cursor SYS_REFCURSOR;
BEGIN
IF TYP='low' THEN my_cursor:= floor_low(id_number);
ELSIF TYP='avg' THEN my_cursor:= floor_avg(id_number);
ELSE my_cursor:= floor_high(id_number);
END IF;
  
  RETURN my_cursor;
END FLOOR_FCT;

/
--------------------------------------------------------
--  DDL for Function FLOOR_HIGH
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."FLOOR_HIGH" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_KG(floor,(Select floor_c from profile where user_id=ID_number),(Select floor_d from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END FLOOR_HIGH;

/
--------------------------------------------------------
--  DDL for Function FLOOR_LOW
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."FLOOR_LOW" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_KL(floor,(Select floor_a from profile where user_id=ID_number),(Select floor_b from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END FLOOR_LOW;

/
--------------------------------------------------------
--  DDL for Function FP_KG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."FP_KG" 
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

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."FP_KL" 
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

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."FP_TR" 
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
--  DDL for Function FUZZY_FCT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."FUZZY_FCT" 
(
cecha IN VARCHAR
,typ IN VARCHAR
,ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  IF cecha ='price' THEN my_cursor:=price(typ,id_number);
  ELSIF cecha='area' THEN my_cursor:=area(typ,id_number);
  ELSIF cecha='floor' THEN my_cursor:=floor_fct(typ,id_number);
  ELSIF cecha='center' THEN my_cursor:=city(typ,id_number);
  ELSE my_cursor:=mpk(typ,id_number);
  END IF;
  RETURN my_cursor;
END FUZZY_FCT;

/
--------------------------------------------------------
--  DDL for Function MPK
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."MPK" 
(
  TYP IN VARCHAR
  ,ID_number IN NUMBER
  ) RETURN SYS_REFCURSOR IS
  my_cursor SYS_REFCURSOR;
BEGIN
IF TYP='low' THEN my_cursor:= mpk_low(id_number);
ELSIF TYP='avg' THEN my_cursor:= mpk_avg(id_number);
ELSE my_cursor:= mpk_high(id_number);
END IF;
  
  RETURN my_cursor;
END MPK;

/
--------------------------------------------------------
--  DDL for Function MPK_AVG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."MPK_AVG" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_TR(distance_to_mpk,(Select mpk_dist_a from profile where user_id=ID_number),(Select mpk_dist_b from profile where user_id=ID_number),(Select mpk_dist_c from profile where user_id=ID_number),(Select mpk_dist_d from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END MPK_AVG;

/
--------------------------------------------------------
--  DDL for Function MPK_HIGH
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."MPK_HIGH" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_KG(distance_to_mpk,(Select mpk_dist_c from profile where user_id=ID_number),(Select mpk_dist_d from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END MPK_HIGH;

/
--------------------------------------------------------
--  DDL for Function MPK_LOW
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."MPK_LOW" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_KL(distance_to_mpk,(Select mpk_dist_a from profile where user_id=ID_number),(Select mpk_dist_b from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END MPK_LOW;

/
--------------------------------------------------------
--  DDL for Function PRICE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."PRICE" 
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

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."PRICE_AVG" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_TR(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number),(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END PRICE_AVG;

/
--------------------------------------------------------
--  DDL for Function PRICE_HIGH
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."PRICE_HIGH" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_KG(price,(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END PRICE_HIGH;

/
--------------------------------------------------------
--  DDL for Function PRICE_LOW
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."PRICE_LOW" 
(
  ID_number IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  update offer SET MI = FP_KL(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number));
  open my_cursor FOR select * from offer where MI > 0.0 order by MI desc;
  RETURN my_cursor;
END PRICE_LOW;

/
