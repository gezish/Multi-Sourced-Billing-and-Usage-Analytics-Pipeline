#!/bin/bash
sftp data@sftp <<EOF
cd upload
get *.csv /opt/data/raw/
bye
EOF
