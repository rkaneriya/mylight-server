DROP TABLE charities; 
DROP TABLE NCCS_5hmdak; 

CREATE TABLE charities (EIN VARCHAR(9) NOT NULL,NCCSKEY VARCHAR(20) ,FisYr VARCHAR(4) ,NAME VARCHAR(60) ,STATE VARCHAR(2) ,NTEE1 VARCHAR(1) ,NTEECC VARCHAR(4) ,ADDRESS VARCHAR(100) ,CITY VARCHAR(22) ,ZIP VARCHAR(10) ,zip5 VARCHAR(5) ,FIPS VARCHAR(5) ,MSA_NECH VARCHAR(4) ,PMSA VARCHAR(4) ,styear VARCHAR(4) ,TAXPER VARCHAR(20) ,outnccs VARCHAR(3) ,OUTREAS VARCHAR(3) ,ntmaj10 VARCHAR(2) ,CONT FLOAT ,INVINC FLOAT ,grsrntsreal FLOAT ,grsrntsprsnl FLOAT ,RENTINC FLOAT ,NETRENT FLOAT ,EXPS FLOAT ,COMPENS FLOAT ,OTHSAL FLOAT , PRIMARY KEY (EIN));
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('010738784','010738784201306','2013','ROTARY CLUB OF WEST ORANGE FOUNDATION INC','NJ','S','S80','C/O M H KARU 333 EISENHOWER PKY','LIVINGSTON','07039-0000','07039','34013','5602','5640','2012','201306','IN','','PU',16849,5185,0,0,0,0,62430,0,0);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('010853738','010853738201306','2013','HUAXIA CHINESE SCHOOL AT BRIDGEWATER A NJ NONPROFIT CORP','NJ','P','P84','PO BOX 6841','BRIDGEWATER','08807-0841','08807','34035','5602','5015','2012','201306','IN','','HU',3525,457,0,0,0,0,262842,19920,132235);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('020731318','020731318201306','2013','FRIENDS OF MARION P THOMAS CHARTER SCHOOL A NEW JERSEY NONPROFIT CORP','NJ','B','B11','370 S 7TH ST','NEWARK','07103-2047','07103','34013','5602','5640','2012','201306','IN','','ED',0,0,0,0,0,0,1213864,0,0);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('020775259','020775259201306','2013','I HAVE A DREAM FOUNDATION NEWARK NJ PROGRAM INC','NJ','B','B90','94 GRAND AVE','ENGLEWOOD','07631-0000','07631','34003','5602','0875','2012','201306','IN','','ED',39048,2864,0,0,0,0,54139,0,23220);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('030498214','030498214201212','2012','NEWARK NOW INC','NJ','R','R24','634 FRELINGHUYSEN AVE','NEWARK','07114-0000','07114','34013','5602','5640','2012','201212','IN','','PU',2513336,63,2000,0,2000,2000,2100922,107705,651002);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('030518951','030518951201306','2013','NEW DESTINY COMMUNITY DEVELOPMENT CORPORATION','NJ','S','S20','PO BOX 2605','PATERSON','07509-2605','07509','34031','5602','0875','2012','201306','IN','','PU',68821,0,NULL,NULL,NULL,NULL,69772,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('043639550','043639550201306','2013','GILDAS CLUB SOUTH JERSEY INC','NJ','P','P46','700 NEW RD','LINWOOD','08221-1237','08221','34001','6162','0560','2012','201306','IN','','HU',563717,688,48100,0,48100,-15116,636347,69005,270251);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('043712076','043712076201303','2013','POINT PLEASANT SOCCER ASSOCIATION','NJ','N','N64','PO BOX 21','POINT PLEASANT','08742-0000','08742','34029','5602','5190','2012','201303','IN','','HU',0,0,NULL,NULL,NULL,NULL,28391,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('061137666','061137666201212','2012','SOCIETY OF COSMETIC CHEMISTS','NJ','U','U03','1 MARS CT STE 1','BOONTON TOWNSHIP','07005-9301','07005','34027','5602','5640','2012','201212','IN','','PU',7128,1024,0,0,0,0,1409815,0,0);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('061674406','061674406201212','2012','BIBLE MINISTRIES FOR CHILDREN INC','NJ','X','X20','5662 PLEASANT MILLS RD','EGG HARBOR CY','08215-4610','08215','34001','6162','0560','2012','201212','IN','','RE',74795,0,NULL,NULL,NULL,NULL,82669,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('061685034','061685034201306','2013','SOUTH JERSEY FIELD OF DREAMS','NJ','N','N30','226 OHIO AVE','ABSECON','08201-2522','08201','34001','6162','0560','2012','201306','IN','','HU',85908,33,0,0,0,0,96200,0,0);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('133367468','133367468201212','2012','GNYAP FOUNDATION','NJ','H','H90','426 HUDSON STREET','HACKENSACK','07601-6669','07601','34003','5602','0875','2012','201212','IN','','HE',509172,12547,0,0,0,0,438077,0,0);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('133754534','133754534201212','2012','AISH HATORAH SPECIAL PROJECTS INC','NJ','X','X30','342 RUTHERFORD BLVD','CLIFTON','07014-0000','07014','34031','5602','0875','2012','201212','IN','','RE',135634,7,NULL,NULL,NULL,NULL,150690,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('133830191','133830191201306','2013','NATIONAL POLICE DEFENSE FOUNDATION INC','NJ','I','I02','PO BOX 318','ENGLISHTOWN','07726-0318','07726','34025','5602','5190','2012','201306','IN','','HU',1938964,7456,0,0,0,0,1759165,112854,0);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('134284578','134284578201212','2012','WADSWORTH CHIP CRESSE III FOUNDATION INC','NJ','B','B82','822 MAIN ST','BARNSBORO','08080-4548','08080','34015','6162','6160','2012','201212','IN','','ED',0,259,NULL,NULL,NULL,NULL,153640,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('161616384','161616384201306','2013','STATE THEATRE REGIONAL ARTS CENTER AT NEW BRUNSWICK INC','NJ','A','A65','11 LIVINGSTON AVE','NEW BRUNSWICK','08901-1903','08901','34023','5602','5015','2012','201306','IN','','AR',1918797,159099,0,0,0,0,9429058,347050,2218190);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('161710112','161710112201306','2013','MIDDLETOWN HIGH SCHOOL NORTH BOOSTER CLUB','NJ','B','B11','PO BOX 509','MIDDLETOWN','07748-0509','07748','34025','5602','5190','2012','201306','IN','','ED',906,0,NULL,NULL,NULL,NULL,26411,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('200094853','200094853201309','2013','KIWANIS CLUB OF EWING TOWNSHIP FOUNDATION INC','NJ','S','S80','55 MONTAGUE AVE','EWING','08628-1708','08628','34021','5602','8480','2012','201309','IN','','PU',2930,7780,NULL,NULL,NULL,NULL,3025,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('200232517','200232517201306','2013','SENECA BOOSTER CLUB INC','NJ','B','B94','110 CARRANZA RD','TABERNACLE','08088-9377','08088','34005','6162','6160','2012','201306','IN','','ED',0,11,NULL,NULL,NULL,NULL,80659,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('201596237','201596237201212','2012','FORT SCHUYLER MARITIME ALUMNI ASSOCIATION INC','NJ','B','B84','236 ERNSTON RD','PARLIN','08859-1926','08859','34023','5602','5015','2012','201212','IN','','ED',328277,186500,0,0,0,0,458220,0,74103);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('201792589','201792589201212','2012','NEW JERSEY COUNCIL FOR EXCEPTIONAL CHILDREN A NON PROFIT CORPORATION','NJ','B','B03','C/O KENNETH R COHEN ESQ 619 RIVER D','ELMWOOD PARK','07407-0000','07407','34003','5602','0875','2012','201212','IN','','ED',7930,2326,NULL,NULL,NULL,NULL,6511,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('202165887','202165887201306','2013','SMITHVILLE FAMILY SCHOOL ASSOCIAITON','NJ','B','B20','37 S OLD PORT ROAD','ABSECON','08205-0000','08205','34001','6162','0560','2012','201306','IN','','ED',0,0,NULL,NULL,NULL,NULL,50523,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('202346749','202346749201307','2013','BERKELEY HEIGHTS PARENT TEACHER ORGANIZATION','NJ','B','B94','446 SNYDER AVE','BERKELEY HTS','07922-2017','07922','34039','5602','5640','2012','201307','IN','','ED',0,0,NULL,NULL,NULL,NULL,36551,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('202815077','202815077201212','2012','POP WARNER LITTLE SCHOLARS INC','NJ','N','N65','13 BELMONT CT','PITTSTOWN','08867-5186','08867','34019','5602','5015','2012','201212','IN','','HU',25574,0,NULL,NULL,NULL,NULL,49632,NULL,NULL);
INSERT INTO charities (EIN,NCCSKEY,FisYr,NAME,STATE,NTEE1,NTEECC,ADDRESS,CITY,ZIP,zip5,FIPS,MSA_NECH,PMSA,styear,TAXPER,outnccs,OUTREAS,ntmaj10,CONT,INVINC,grsrntsreal,grsrntsprsnl,RENTINC,NETRENT,EXPS,COMPENS,OTHSAL) VALUES ('202959012','202959012201306','2013','CANCER INSTITUTE OF NEW JERSEY FOUNDATION INC','NJ','G','G30','120 ALBANY ST TOWER II','NEW BRUNSWICK','08901-0000','08901','34023','5602','5015','2012','201306','IN','','HE',3379266,24287,0,0,0,0,3669918,139863,411861);
