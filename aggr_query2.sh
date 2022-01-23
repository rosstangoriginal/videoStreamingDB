#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* aggregation query 2 */
SELECT
    MIN(licensingcost), MAX(licensingcost), AVG(licensingcost)
FROM
    producer;
    
exit;
EOF