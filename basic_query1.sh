#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* basic query 1 */
SELECT 
    DISTINCT email AS Email_Address, 
    username AS User_Name,
    age
FROM
    client
ORDER BY 
    age;
    
exit;
EOF