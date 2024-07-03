#!/bin/bash

STATE=$1
#fl
COUNTY=$2
#dixie
UCOUNTY=$3
#Dixie
YEAR=$4

SQLCOUNTY='${STATE}_${COUNTY}'

#CSV_DIR="../../files/fixed"
SQL_SCRIPT="import_csv.sql"

#FILENAME='${CSV_DIR}/${filename}'
FILENAME=../../files/fixed/$STATE/$COUNTY/$YEAR\_$UCOUNTY\_Results.txt

psql -d your_database -c "\i ${SQL_SCRIPT}" -v v1="$FILENAME" -v v2="'${SQLCOUNTY}'" -v v3="${YEAR}"
