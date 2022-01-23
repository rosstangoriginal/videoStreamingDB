#!/bin/bash
#export LD_LIBRARY_PATH-/usr/lib/oracle/12.1/client64/lib

sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

/* view query 2 */
CREATE VIEW older_clients (name, age, email, password) AS
    (SELECT
        username, age, email, password
    FROM
        client
    WHERE
        age >= 50);

SELECT * FROM older_clients;
    
exit;
EOF