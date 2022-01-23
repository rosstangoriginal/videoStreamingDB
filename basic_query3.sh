#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* basic query 3 */
SELECT DISTINCT 
    producername AS Producer_Name,
    availablevideos AS Available_Videos
FROM 
    producer 
ORDER BY
    availablevideos;
    
exit;
EOF