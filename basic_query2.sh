#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* basic query 2 */
SELECT DISTINCT
    promoname AS Promo_Name,
    promo# AS Promo_Num
FROM
    promo
ORDER BY
    promo#;
    
exit;
EOF