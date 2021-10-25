#!/bin/bash

mysql  << EOF
use performance;

CREATE TABLE IF NOT EXISTS $7 (
Timestamp    varchar(15),
Node         varchar(13),
GPU_ID       varchar(5),
gflops       double precision
);

INSERT INTO $7 (Timestamp, Node, GPU_ID, gflops)
VALUES ('$1 $2 $3','$4','$5','$6');

\q
EOF

