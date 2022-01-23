#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* view query 1 */
CREATE VIEW cheap_vids (video_title, cost) AS
    (SELECT 
        availablevideos, licensingcost
    FROM
        producer
    WHERE
        licensingcost <= 1000000);

SELECT * FROM cheap_vids;
    
exit;
EOF