#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* aggregation query 1 */
SELECT
    topvid1, COUNT(promo#)
FROM 
    promo
GROUP BY
    topvid1;
    
exit;
EOF