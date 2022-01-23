#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* basic query 5 */
SELECT
    licensingcost AS Licensing_Cost,
    producername AS Producer_Name
FROM
    producer
WHERE 
    licence#<20000
ORDER BY
    licensingcost;
    
exit;
EOF