#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* view query 3 */
CREATE VIEW videos_with_multiword_names AS
    (SELECT 
        *
    FROM
        video
    WHERE
        title LIKE '% %');

SELECT * FROM videos_with_multiword_names;
    
exit;
EOF