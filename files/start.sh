#columbia	dixie		gadsden		gilchrist	lafayette	list.txt	polk		putnam		sarasota	suwannee

COUNTY=dixie
COUNTY2=Dixie
STATE=fl

mkdir fixed/$STATE
mkdir fixed/$COUNTY

python3 fix4.py download/$STATE/$COUNTY/2024_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2024_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2023_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2023_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2022_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2022_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2021_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2021_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2020_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2020_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2019_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2019_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2018_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2018_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2017_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2017_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2016_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2016_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2015_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2015_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2014_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2014_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2013_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2013_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2012_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2012_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2011_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2011_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2010_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2010_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2009_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2009_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2008_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2008_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2007_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2007_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2006_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2006_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2005_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2005_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2004_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2004_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2003_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2003_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2002_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2002_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2001_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2001_$COUNTY2_Results.txt
python3 fix4.py download/$STATE/$COUNTY/2000_$COUNTY2_Results.txt fixed/$STATE/$COUNTY/2000_$COUNTY2_Results.txt
