#columbia	dixie		gadsden		gilchrist	lafayette	list.txt	polk		putnam		sarasota	suwannee

STATE=fl

COUNTY=columbia
UCOUNTY=Columbia

#COUNTY=dixie
#UCOUNTY=Dixie

mkdir ../../files/fixed/$STATE
mkdir ../../files/fixed/$STATE/$COUNTY

python3 fix_csv.py ../../files/download/$STATE/$COUNTY/2006_$UCOUNTY\_Results.txt ../../files/fixed/$STATE/$COUNTY/2006_$UCOUNTY\_Results.txt
