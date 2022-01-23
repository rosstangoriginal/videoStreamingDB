#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* basic query 4 */
SELECT 
    genrepref AS Preferred_Genre,  
	tagword1,
	tagword2,
	tagword3
FROM 
    client
ORDER BY
    genrepref;
    
exit;
EOF