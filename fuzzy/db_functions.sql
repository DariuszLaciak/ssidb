--------------------------------------------------------
--  File created - Wednesday-December-24-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function AREA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."AREA" 
(
  TYP IN VARCHAR
  ,ID_number IN NUMBER
  ,treshold IN NUMBER
  ) RETURN SYS_REFCURSOR IS
  my_cursor SYS_REFCURSOR;
BEGIN
IF TYP='low' THEN update offer SET MI = FP_KL(total_area,(Select area_a from profile where user_id=ID_number),(Select area_b from profile where user_id=ID_number));
ELSIF TYP='avg' THEN update offer SET MI = FP_TR(total_area,(Select area_a from profile where user_id=ID_number),(Select area_b from profile where user_id=ID_number),(Select area_c from profile where user_id=ID_number),(Select area_d from profile where user_id=ID_number));
ELSE update offer SET MI = FP_KG(total_area,(Select area_c from profile where user_id=ID_number),(Select area_d from profile where user_id=ID_number));
END IF;
  open my_cursor FOR select * from offer where MI > treshold order by MI desc;
  RETURN my_cursor;
END AREA;

/
--------------------------------------------------------
--  DDL for Function CITY
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."CITY" 
(
  TYP IN VARCHAR
  ,ID_number IN NUMBER
  ,treshold IN NUMBER
  ) RETURN SYS_REFCURSOR IS
  my_cursor SYS_REFCURSOR;
BEGIN
IF TYP='low' THEN update offer SET MI = FP_KL(distance_to_center,(Select city_dist_a from profile where user_id=ID_number),(Select city_dist_b from profile where user_id=ID_number));
ELSIF TYP='avg' THEN update offer SET MI = FP_TR(distance_to_center,(Select city_dist_a from profile where user_id=ID_number),(Select city_dist_b from profile where user_id=ID_number),(Select city_dist_c from profile where user_id=ID_number),(Select city_dist_d from profile where user_id=ID_number));
ELSE update offer SET MI = FP_KG(distance_to_center,(Select city_dist_c from profile where user_id=ID_number),(Select city_dist_d from profile where user_id=ID_number));
END IF;
  open my_cursor FOR select * from offer where MI > treshold order by MI desc;
  RETURN my_cursor;
END CITY;

/
--------------------------------------------------------
--  DDL for Function FLOOR_FCT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."FLOOR_FCT" 
(
  TYP IN VARCHAR
  ,ID_number IN NUMBER
  ,treshold IN NUMBER
  ) RETURN SYS_REFCURSOR IS
  my_cursor SYS_REFCURSOR;
BEGIN
IF TYP='low' THEN update offer SET MI = FP_KL(floor,(Select floor_a from profile where user_id=ID_number),(Select floor_b from profile where user_id=ID_number));
ELSIF TYP='avg' THEN update offer SET MI = FP_TR(floor,(Select floor_a from profile where user_id=ID_number),(Select floor_b from profile where user_id=ID_number),(Select floor_c from profile where user_id=ID_number),(Select floor_d from profile where user_id=ID_number));
ELSE update offer SET MI = FP_KG(floor,(Select floor_c from profile where user_id=ID_number),(Select floor_d from profile where user_id=ID_number));
END IF;
  open my_cursor FOR select * from offer where MI > treshold order by MI desc;
  RETURN my_cursor;
END FLOOR_FCT;

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
,treshold IN NUMBER
) RETURN SYS_REFCURSOR IS
my_cursor SYS_REFCURSOR;
BEGIN
  IF cecha ='price' THEN my_cursor:=price(typ,id_number,treshold);
  ELSIF cecha='area' THEN my_cursor:=area(typ,id_number,treshold);
  ELSIF cecha='floor' THEN my_cursor:=floor_fct(typ,id_number,treshold);
  ELSIF cecha='center' THEN my_cursor:=city(typ,id_number,treshold);
  ELSE my_cursor:=mpk(typ,id_number,treshold);
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
  ,treshold IN NUMBER
  ) RETURN SYS_REFCURSOR IS
  my_cursor SYS_REFCURSOR;
BEGIN
IF TYP='low' THEN update offer SET MI = FP_KL(distance_to_mpk,(Select mpk_dist_a from profile where user_id=ID_number),(Select mpk_dist_b from profile where user_id=ID_number));
ELSIF TYP='avg' THEN update offer SET MI = FP_TR(distance_to_mpk,(Select mpk_dist_a from profile where user_id=ID_number),(Select mpk_dist_b from profile where user_id=ID_number),(Select mpk_dist_c from profile where user_id=ID_number),(Select mpk_dist_d from profile where user_id=ID_number));
ELSE update offer SET MI = FP_KG(distance_to_mpk,(Select mpk_dist_c from profile where user_id=ID_number),(Select mpk_dist_d from profile where user_id=ID_number));
END IF;
  open my_cursor FOR select * from offer where MI > treshold order by MI desc;
  RETURN my_cursor;
END MPK;

/
--------------------------------------------------------
--  DDL for Function PRICE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."PRICE" 
(
  TYP IN VARCHAR
  ,ID_number IN NUMBER
  ,treshold IN NUMBER
  ) RETURN SYS_REFCURSOR IS
  my_cursor SYS_REFCURSOR;
BEGIN
IF TYP='low' THEN update offer SET MI = FP_KL(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number));
ELSIF TYP='avg' THEN update offer SET MI = FP_TR(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number),(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number));
ELSE update offer SET MI = FP_KG(price,(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number));
END IF;
 open my_cursor FOR select * from offer where MI > treshold order by MI desc;
 RETURN my_cursor;
END PRICE;

/
