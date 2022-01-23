#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* union query */
(SELECT 
    c1.*
FROM 
    client c1, payment pmt 
WHERE
    pmt.username = c1.username
    AND c1.username LIKE '%Lannister%')
UNION
(SELECT 
    c1.*
FROM 
    client c1, payment pmt
WHERE
    pmt.username = c1.username
    AND c1.email LIKE '%gmail%');
    
exit;
EOF