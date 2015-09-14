!/bin/bash

echo 1 users
date
START=$(date +%s%N)
echo $RANDOM $1 |  xargs -n 2 -P 200 python lightcurve-assoc.py
END=$(date +%s%N)
DIFF=`lua -e "print(($END-$START)/1000000000)"`
date
printf "Total: %.2f \n" $DIFF


echo 10 users
date
START=$(date +%s%N)
for (( j=1;j<=10;j++ )); do echo $RANDOM $1;done |  xargs -n 2 -P 200 python lightcurve-assoc.py
END=$(date +%s%N)
DIFF=`lua -e "print (($END - $START)/1000000000)"`
date
printf "Total: %.2f \n" $DIFF


echo 20 users
date
START=$(date +%s%N)
for (( j=1;j<=20;j++ )); do echo $RANDOM $1;done |  xargs -n 2 -P 200 python lightcurve-assoc.py
END=$(date +%s%N)
DIFF=`lua -e "print (($END - $START)/1000000000)"`
date
printf "Total: %.2f\n" $DIFF


echo 2TB, 1 users
date
START=$(date +%s%N)
echo $RANDOM $1 |  xargs -n 2 -P 200 python lightcurve-assoc.py
END=$(date +%s%N)
DIFF=`lua -e "print(($END-$START)/1000000000)"`
date
printf "Total: %.2f \n" $DIFF

echo 10 users
date
START=$(date +%s%N)
for (( j=1;j<=10;j++ )); do echo $RANDOM $1;done |  xargs -n 2 -P 200 python lightcurve-assoc.py
END=$(date +%s%N)
DIFF=`lua -e "print (($END - $START)/1000000000)"`
date
printf "Total: %.2f \n" $DIFF


echo 15 users
date
START=$(date +%s%N)
for (( j=1;j<=15;j++ )); do echo $RANDOM $1;done |  xargs -n 2 -P 200 python lightcurve-assoc.py
END=$(date +%s%N)
DIFF=`lua -e "print (($END - $START)/1000000000)"`
date
printf "Total: %.2f\n" $DIFF

