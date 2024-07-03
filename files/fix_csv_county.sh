#columbia	dixie		gadsden		gilchrist	lafayette	list.txt	polk		putnam		sarasota	suwannee

STATE=$1
#fl
COUNTY=$2
#dixie
UCOUNTY=$3
#Dixie

mkdir fixed/$STATE
mkdir fixed/$STATE/$COUNTY

python3 fix_csv.py download/$STATE/$COUNTY/2024_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2024_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2023_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2023_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2022_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2022_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2021_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2021_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2020_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2020_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2019_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2019_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2018_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2018_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2017_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2017_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2016_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2016_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2015_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2015_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2014_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2014_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2013_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2013_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2012_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2012_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2011_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2011_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2010_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2010_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2009_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2009_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2008_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2008_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2007_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2007_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2006_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2006_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2005_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2005_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2004_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2004_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2003_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2003_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2002_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2002_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2001_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2001_$UCOUNTY\_Results.txt
python3 fix_csv.py download/$STATE/$COUNTY/2000_$UCOUNTY\_Results.txt fixed/$STATE/$COUNTY/2000_$UCOUNTY\_Results.txt
