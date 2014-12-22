--------------------------------------------------------
--  File created - Monday-December-22-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table OFFER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."OFFER" 
   (	"ID" NUMBER(19,0), 
	"MI" FLOAT(126), 
	"ADDRESS" VARCHAR2(20 CHAR), 
	"DISTANCE_TO_MPK" FLOAT(126), 
	"DISTANCE_TO_CENTER" FLOAT(126), 
	"EXPOSITION" VARCHAR2(20 CHAR), 
	"FLOOR" NUMBER(10,0), 
	"N_OF_ROOMS" NUMBER(10,0), 
	"PRICE" FLOAT(126), 
	"TOTAL_AREA" FLOAT(126), 
	"IDUSER" NUMBER(19,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROFILE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PROFILE" 
   (	"ID" NUMBER(19,0), 
	"AREA_A" FLOAT(126), 
	"AREA_B" FLOAT(126), 
	"AREA_C" FLOAT(126), 
	"AREA_D" FLOAT(126), 
	"CITY_DIST_A" FLOAT(126), 
	"CITY_DIST_B" FLOAT(126), 
	"CITY_DIST_C" FLOAT(126), 
	"CITY_DIST_D" FLOAT(126), 
	"FLOOR_A" FLOAT(126), 
	"FLOOR_B" FLOAT(126), 
	"FLOOR_C" FLOAT(126), 
	"FLOOR_D" FLOAT(126), 
	"MPK_DIST_A" FLOAT(126), 
	"MPK_DIST_B" FLOAT(126), 
	"MPK_DIST_C" FLOAT(126), 
	"MPK_DIST_D" FLOAT(126), 
	"PRICE_A" FLOAT(126), 
	"PRICE_B" FLOAT(126), 
	"PRICE_C" FLOAT(126), 
	"PRICE_D" FLOAT(126), 
	"USER_ID" NUMBER(19,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERDTO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USERDTO" 
   (	"ID" NUMBER(19,0), 
	"ADDRESS" VARCHAR2(20 CHAR), 
	"EMAIL" VARCHAR2(20 CHAR), 
	"LOGIN" VARCHAR2(20 CHAR), 
	"PASSWORD" VARCHAR2(20 CHAR), 
	"PHONE" VARCHAR2(20 CHAR), 
	"TYPE" VARCHAR2(20 CHAR)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.OFFER
SET DEFINE OFF;
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (280,0,'adres0',410.7812,1.4527309,'E',3,1,317.87085,85.506775,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (281,0,'adres1',656.12537,1.8887157,'N',1,2,1198.62,51.64947,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (282,0,'adres2',343.8748,1.1002257,'W',10,1,1199.5013,76.10719,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (283,0,'adres3',1133.6973,5.8572187,'E',9,5,443.60907,77.78919,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (284,0,'adres4',111.88868,0.13791347,'S',2,3,884.64606,15.795139,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (285,0,'adres5',718.3363,10.287542,'N',3,4,925.4807,108.42413,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (286,0,'adres6',844.81586,7.6577067,'E',9,5,935.72723,40.33403,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (287,0.30713,'adres7',713.6415,3.1316206,'N',4,1,229.36052,10.423824,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (288,0,'adres8',1010.3507,3.8553987,'S',2,1,612.1137,99.3441,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (289,0,'adres9',1165.744,10.528683,'E',4,1,833.4537,91.44203,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (290,0,'adres10',331.70007,4.4577813,'W',5,3,409.9066,29.061768,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (291,0,'adres11',720.58167,8.012522,'N',10,1,1051.4685,12.565217,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (292,0,'adres12',222.7496,4.091176,'E',7,4,892.02155,18.846336,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (293,0,'adres13',834.355,5.0536385,'N',11,5,792.94556,26.968267,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (294,0.09235,'adres14',377.53436,5.0336676,'W',3,1,278.7593,45.46172,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (295,0,'adres15',230.88628,2.9965932,'E',2,3,1201.8224,52.689205,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (296,0,'adres16',1195.9177,11.364374,'S',9,1,446.30804,34.942635,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (297,0,'adres17',1061.4221,9.227808,'N',6,1,971.308,12.349705,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (298,0.1099,'adres18',1038.4585,10.960856,'E',7,4,274.7229,25.884571,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (299,0.1271,'adres19',71.70032,4.2401342,'N',10,4,270.76666,27.21843,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (300,0,'adres20',439.32797,0.2838714,'S',1,3,1211.8633,38.596954,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (301,0,'adres21',807.48755,5.969354,'E',10,4,1234.914,47.969326,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (302,0,'adres22',370.97913,3.800952,'W',5,6,1071.6686,80.222664,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (303,1,'adres23',568.8261,5.3159018,'N',3,4,66.052765,67.81853,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (304,0,'adres24',174.71167,7.159491,'E',8,1,1124.377,85.478714,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (305,0,'adres25',1207.7292,7.322406,'N',9,5,743.7133,40.113125,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (306,0,'adres26',84.604324,0.40176558,'W',9,3,1202.5498,13.578496,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (307,0,'adres27',281.20795,0.8112123,'E',3,1,960.60284,75.76038,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (308,0,'adres28',392.9135,6.5531893,'S',3,3,1199.4287,77.43177,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (309,0,'adres29',261.42276,0.56651115,'N',7,2,835.0772,18.46306,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (310,0.76337,'adres30',748.9984,8.899865,'E',9,6,124.42521,94.07796,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (311,0,'adres31',99.247536,4.743222,'N',11,1,1009.5639,12.332049,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (312,0,'adres32',943.44617,5.4366713,'S',10,2,360.76202,27.092186,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (313,0,'adres33',539.7371,11.941294,'E',7,5,540.5631,40.18316,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (314,0,'adres34',802.5321,5.616872,'W',7,2,1199.8801,64.6337,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (315,0,'adres35',976.4487,3.0434625,'N',5,3,842.282,22.615128,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (316,0,'adres36',811.14264,4.256594,'E',7,6,777.75134,25.852684,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (317,0,'adres37',674.6507,3.5085168,'N',2,1,1071.2015,10.647259,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (318,0,'adres38',1111.3864,10.604858,'W',7,6,981.9004,98.88311,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (319,0,'adres39',222.59016,8.922366,'E',3,2,1016.0143,67.09334,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (320,0,'adres40',264.14294,1.6931477,'S',5,1,935.0839,71.43027,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (321,0,'adres41',922.60645,9.553821,'N',2,3,487.37015,107.61403,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (322,0,'adres42',390.74344,4.2816076,'E',10,4,768.54474,92.63431,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (323,0.43737,'adres43',939.49365,11.7773075,'N',4,3,199.40555,52.72778,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (324,0,'adres44',926.86584,0.29082155,'S',3,2,487.56683,30.231277,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (325,0,'adres45',968.98737,7.540187,'E',2,2,337.90137,80.87232,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (326,0,'adres46',788.84314,6.8681045,'W',8,6,432.35068,85.87863,262);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (327,0.32509,'adres47',561.4718,2.7789645,'N',2,6,225.22935,86.94193,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (328,0,'adres48',10.526071,0.062791586,'E',2,6,602.9019,59.670685,261);
Insert into SYSTEM.OFFER (ID,MI,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (329,0,'adres49',503.18286,9.070174,'N',2,6,1065.6125,28.78109,261);
REM INSERTING into SYSTEM.PROFILE
SET DEFINE OFF;
Insert into SYSTEM.PROFILE (ID,AREA_A,AREA_B,AREA_C,AREA_D,CITY_DIST_A,CITY_DIST_B,CITY_DIST_C,CITY_DIST_D,FLOOR_A,FLOOR_B,FLOOR_C,FLOOR_D,MPK_DIST_A,MPK_DIST_B,MPK_DIST_C,MPK_DIST_D,PRICE_A,PRICE_B,PRICE_C,PRICE_D,USER_ID) values (270,20,50,70,100,1,5,7,10,1,3,5,7,20,200,500,1000,70,300,500,1000,260);
REM INSERTING into SYSTEM.USERDTO
SET DEFINE OFF;
Insert into SYSTEM.USERDTO (ID,ADDRESS,EMAIL,LOGIN,PASSWORD,PHONE,TYPE) values (260,'userowo','user@user.user','user','user','1234567890','commonUser');
Insert into SYSTEM.USERDTO (ID,ADDRESS,EMAIL,LOGIN,PASSWORD,PHONE,TYPE) values (261,'devowo','dev@dev.dev','dev','dev','0987654321','superUser');
Insert into SYSTEM.USERDTO (ID,ADDRESS,EMAIL,LOGIN,PASSWORD,PHONE,TYPE) values (262,'devowo','dev1@dev1.dev','dev1','dev1','1023954633','superUser');
Insert into SYSTEM.USERDTO (ID,ADDRESS,EMAIL,LOGIN,PASSWORD,PHONE,TYPE) values (263,'adminowo','admin@admin.admin','admin','admin','0192837465','admin');
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
