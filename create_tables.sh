#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* creates the 5 relational schema as tables */
CREATE TABLE client
(   username VARCHAR2(60),
    password VARCHAR2(60),
    email VARCHAR2(60),
    age NUMBER(3,0),
    creditcard# NUMBER(16,0),
    promo# NUMBER,
    genrepref VARCHAR2(40),  
	  tagword1 VARCHAR2(20), 
	  tagword2 VARCHAR2(20), 
	  tagword3 VARCHAR2(20),
    CONSTRAINT CLIENT_PK PRIMARY KEY (username)
);

CREATE TABLE video
(   title VARCHAR2(60),
    release_date DATE,
    times_watched NUMBER(20,0),
    duration_watched FLOAT(20),
    tagword1 VARCHAR2(20), 
    tagword2 VARCHAR2(20), 
    tagword3 VARCHAR2(20),
    CONSTRAINT VIDEO_PK PRIMARY KEY (title)
);

CREATE TABLE promo
(   promoname VARCHAR2(40), 
    promo# NUMBER,
	topvid1 VARCHAR2(40), 
	topvid2 VARCHAR2(40), 
	topvid3 VARCHAR2(40), 
	newvid1 VARCHAR2(40), 
	newvid2 VARCHAR2(40), 
	newvid3 VARCHAR2(40), 
    CONSTRAINT PROMO_PK PRIMARY KEY (promoname)
);

CREATE TABLE payment
(   payment# NUMBER(20,0), 
	username VARCHAR2(60), 
	subexdate DATE, 
	CONSTRAINT PAYMENT_PK PRIMARY KEY (payment#)
);

CREATE TABLE producer
(   producername VARCHAR2(60),
    licence# NUMBER(*,0), 
    availablevideos VARCHAR2(60),
    licensingcost NUMBER(*,2),
    producerphone NUMBER(*,0), 
	expdate DATE,
    CONSTRAINT PRODUCER_PK PRIMARY KEY (producername)
);

exit;
EOF
