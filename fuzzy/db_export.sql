--------------------------------------------------------
--  File created - Monday-December-22-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table OFFER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."OFFER" 
   (	"ID" NUMBER(19,0), 
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
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (30,'adres',100.92846,9.544319,'tak',4,2,602.56604,56.062355,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (31,'adres',489.8984,3.6614056,'tak',8,5,981.99133,63.222622,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (32,'adres',1163.0382,0.9727607,'tak',1,1,110.13347,57.560333,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (33,'adres',107.13116,4.0818915,'tak',3,6,983.7188,13.343714,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (34,'adres',108.58763,4.274404,'tak',7,2,1231.4116,41.787003,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (35,'adres',365.23276,0.46263242,'tak',2,6,833.6869,102.6097,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (36,'adres',910.15326,5.2525635,'tak',10,2,291.66382,47.60392,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (37,'adres',703.306,7.989579,'tak',1,1,1092.4006,80.908264,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (38,'adres',42.538773,1.9158862,'tak',9,5,844.9869,19.799034,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (39,'adres',1097.7296,8.949663,'tak',6,4,828.19867,66.451004,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (40,'adres',932.5999,7.8056874,'tak',11,2,873.0304,21.302979,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (41,'adres',1135.8978,10.209366,'tak',3,1,588.1482,57.90954,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (42,'adres',1059.6589,8.997755,'tak',5,6,488.6647,37.37714,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (43,'adres',699.65314,2.052889,'tak',6,4,483.47388,83.25693,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (44,'adres',140.8732,10.797122,'tak',5,4,992.2333,94.5838,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (45,'adres',1127.3999,5.6442623,'tak',8,4,775.031,49.457005,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (46,'adres',575.8558,4.2212057,'tak',5,1,715.5043,49.727993,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (47,'adres',578.68445,3.4063797,'tak',2,2,514.48145,14.565686,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (48,'adres',296.11945,0.43002963,'tak',8,3,80.78331,16.443548,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (49,'adres',775.23975,11.023207,'tak',4,1,1055.2157,106.865776,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (50,'adres',22.16364,4.292444,'tak',9,2,921.0551,59.452953,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (51,'adres',495.27106,11.144525,'tak',7,4,1088.3245,57.031933,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (52,'adres',55.475887,4.2648964,'tak',8,3,543.56067,87.5373,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (53,'adres',311.39166,3.479451,'tak',7,1,312.7472,90.967064,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (54,'adres',750.98285,6.430268,'tak',11,3,1143.5215,72.32365,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (55,'adres',1071.3331,11.967364,'tak',6,1,1144.1688,49.470585,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (56,'adres',680.1385,1.1183975,'tak',8,2,1111.8362,73.03793,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (57,'adres',119.04231,11.017545,'tak',5,4,1203.4965,91.476326,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (58,'adres',712.9556,6.30955,'tak',9,2,171.12827,17.848936,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (59,'adres',520.8434,8.5653515,'tak',8,5,604.0732,106.54765,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (60,'adres',1105.2039,0.73276806,'tak',1,4,290.49463,38.059044,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (61,'adres',965.07434,2.0706253,'tak',2,3,740.72253,60.20909,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (62,'adres',72.31358,0.5008192,'tak',4,4,481.44238,91.21581,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (63,'adres',792.6865,5.0244284,'tak',10,4,367.3081,29.883156,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (64,'adres',485.7922,7.232916,'tak',6,3,412.74588,47.166763,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (65,'adres',664.5377,10.360973,'tak',9,6,725.75995,46.468964,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (66,'adres',15.927253,6.916685,'tak',2,2,1131.8569,72.63769,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (67,'adres',1055.1624,5.0579834,'tak',3,6,1223.7301,103.47288,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (68,'adres',1038.511,10.380277,'tak',1,1,284.05313,69.65057,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (69,'adres',1064.8639,6.551896,'tak',8,1,883.13574,45.81952,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (70,'adres',13.365922,2.7335808,'tak',4,1,407.31094,30.41858,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (71,'adres',982.56744,6.6108694,'tak',2,6,445.55402,35.910553,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (72,'adres',156.19247,5.676155,'tak',11,1,163.13113,56.090775,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (73,'adres',249.52055,8.151679,'tak',8,3,926.37,47.773098,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (74,'adres',432.88028,11.890007,'tak',9,2,247.69781,85.550934,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (75,'adres',581.7742,10.391976,'tak',8,4,306.96857,93.94927,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (76,'adres',658.51746,3.662246,'tak',10,5,619.4069,109.607315,12);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (77,'adres',1070.5276,0.79653454,'tak',8,3,343.48694,19.954786,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (78,'adres',298.46756,7.550727,'tak',8,4,416.67078,14.755699,11);
Insert into SYSTEM.OFFER (ID,ADDRESS,DISTANCE_TO_MPK,DISTANCE_TO_CENTER,EXPOSITION,FLOOR,N_OF_ROOMS,PRICE,TOTAL_AREA,IDUSER) values (79,'adres',756.16364,2.11829,'tak',10,1,1204.2759,87.2202,11);
REM INSERTING into SYSTEM.PROFILE
SET DEFINE OFF;
Insert into SYSTEM.PROFILE (ID,AREA_A,AREA_B,AREA_C,AREA_D,CITY_DIST_A,CITY_DIST_B,CITY_DIST_C,CITY_DIST_D,FLOOR_A,FLOOR_B,FLOOR_C,FLOOR_D,MPK_DIST_A,MPK_DIST_B,MPK_DIST_C,MPK_DIST_D,PRICE_A,PRICE_B,PRICE_C,PRICE_D,USER_ID) values (20,20,50,70,100,1,5,7,10,1,3,5,7,20,200,500,1000,70,300,500,1000,10);
REM INSERTING into SYSTEM.USERDTO
SET DEFINE OFF;
Insert into SYSTEM.USERDTO (ID,ADDRESS,EMAIL,LOGIN,PASSWORD,PHONE,TYPE) values (10,'userowo','user@user.user','user','user','1234567890','commonUser');
Insert into SYSTEM.USERDTO (ID,ADDRESS,EMAIL,LOGIN,PASSWORD,PHONE,TYPE) values (11,'devowo','dev@dev.dev','dev','dev','0987654321','superUser');
Insert into SYSTEM.USERDTO (ID,ADDRESS,EMAIL,LOGIN,PASSWORD,PHONE,TYPE) values (12,'devowo','dev1@dev1.dev','dev1','dev1','1023954633','superUser');
Insert into SYSTEM.USERDTO (ID,ADDRESS,EMAIL,LOGIN,PASSWORD,PHONE,TYPE) values (13,'adminowo','admin@admin.admin','admin','admin','0192837465','admin');
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
  open my_cursor FOR select * from offer 
  where FP_TR(total_area,(Select area_a from profile where user_id=ID_number),(Select area_b from profile where user_id=ID_number),(Select area_c from profile where user_id=ID_number),(Select area_d from profile where user_id=ID_number)) > 0
  order by FP_TR(total_area,(Select area_a from profile where user_id=ID_number),(Select area_b from profile where user_id=ID_number),(Select area_c from profile where user_id=ID_number),(Select area_d from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_KG(total_area,(Select area_c from profile where user_id=ID_number),(Select area_d from profile where user_id=ID_number)) > 0
  order by FP_KG(total_area,(Select area_c from profile where user_id=ID_number),(Select area_d from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_KL(total_area,(Select area_a from profile where user_id=ID_number),(Select area_b from profile where user_id=ID_number)) > 0
  order by FP_KL(total_area,(Select area_a from profile where user_id=ID_number),(Select area_b from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_TR(distance_to_center,(Select city_dist_a from profile where user_id=ID_number),(Select city_dist_b from profile where user_id=ID_number),(Select city_dist_c from profile where user_id=ID_number),(Select city_dist_d from profile where user_id=ID_number)) > 0
  order by FP_TR(distance_to_center,(Select city_dist_a from profile where user_id=ID_number),(Select city_dist_b from profile where user_id=ID_number),(Select city_dist_c from profile where user_id=ID_number),(Select city_dist_d from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_KG(distance_to_center,(Select city_dist_c from profile where user_id=ID_number),(Select city_dist_d from profile where user_id=ID_number)) > 0
  order by FP_KG(distance_to_center,(Select city_dist_c from profile where user_id=ID_number),(Select city_dist_d from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_KL(distance_to_center,(Select city_dist_a from profile where user_id=ID_number),(Select city_dist_b from profile where user_id=ID_number)) > 0
  order by FP_KL(distance_to_center,(Select city_dist_a from profile where user_id=ID_number),(Select city_dist_b from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_TR(floor,(Select floor_a from profile where user_id=ID_number),(Select floor_b from profile where user_id=ID_number),(Select floor_c from profile where user_id=ID_number),(Select floor_d from profile where user_id=ID_number)) > 0
  order by FP_TR(floor,(Select floor_a from profile where user_id=ID_number),(Select floor_b from profile where user_id=ID_number),(Select floor_c from profile where user_id=ID_number),(Select floor_d from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_KG(floor,(Select floor_c from profile where user_id=ID_number),(Select floor_d from profile where user_id=ID_number)) > 0
  order by FP_KG(floor,(Select floor_c from profile where user_id=ID_number),(Select floor_d from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_KL(floor,(Select floor_a from profile where user_id=ID_number),(Select floor_b from profile where user_id=ID_number)) > 0
  order by FP_KL(floor,(Select floor_a from profile where user_id=ID_number),(Select floor_b from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_TR(distance_to_mpk,(Select mpk_dist_a from profile where user_id=ID_number),(Select mpk_dist_b from profile where user_id=ID_number),(Select mpk_dist_c from profile where user_id=ID_number),(Select mpk_dist_d from profile where user_id=ID_number)) > 0
  order by FP_TR(distance_to_mpk,(Select mpk_dist_a from profile where user_id=ID_number),(Select mpk_dist_b from profile where user_id=ID_number),(Select mpk_dist_c from profile where user_id=ID_number),(Select mpk_dist_d from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_KG(distance_to_mpk,(Select mpk_dist_c from profile where user_id=ID_number),(Select mpk_dist_d from profile where user_id=ID_number)) > 0
  order by FP_KG(distance_to_mpk,(Select mpk_dist_c from profile where user_id=ID_number),(Select mpk_dist_d from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_KL(distance_to_mpk,(Select mpk_dist_a from profile where user_id=ID_number),(Select mpk_dist_b from profile where user_id=ID_number)) > 0
  order by FP_KL(distance_to_mpk,(Select mpk_dist_a from profile where user_id=ID_number),(Select mpk_dist_b from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_TR(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number),(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number)) > 0
  order by FP_TR(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number),(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_KG(price,(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number)) > 0
  order by FP_KG(price,(Select price_c from profile where user_id=ID_number),(Select price_d from profile where user_id=ID_number)) desc;
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
  open my_cursor FOR select * from offer 
  where FP_KL(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number)) > 0
  order by FP_KL(price,(Select price_a from profile where user_id=ID_number),(Select price_b from profile where user_id=ID_number)) desc;
  RETURN my_cursor;
END PRICE_LOW;

/
