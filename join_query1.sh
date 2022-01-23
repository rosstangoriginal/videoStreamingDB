#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* join query 1 */
SELECT
    prm.promoname, c.tagword1
FROM
    promo prm,
    client c
WHERE
    prm.topvid1 LIKE 'The_%'
    AND 
    prm.promo# = c.promo#;
    
exit;
EOF