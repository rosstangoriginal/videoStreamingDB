#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* exists query */
EXISTS
    (SELECT 
        c.username AS name, c.email, pmt.payment#
    FROM 
        client c, payment pmt 
    WHERE
        pmt.username = c.username
        AND c.email LIKE '%msn.com'
        AND c.username LIKE '%n%');
    
exit;
EOF