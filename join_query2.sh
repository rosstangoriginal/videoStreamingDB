#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* join query 2 */
SELECT
    c.username AS User_name, c.email, pmt.payment# AS Payment_number
FROM
    payment pmt,
    client c
WHERE
    pmt.username = c.username
    AND
    pmt.payment# >= 5
    AND
    c.email LIKE '%_gmail.com';
    
exit;
EOF