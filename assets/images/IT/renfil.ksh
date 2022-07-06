#!/bin/ksh

seq=1
cnt=1
lang=IT

for i in `ls IMG*`
do
if [ `expr $cnt % 2` -eq 0 ]
then 
  suff=back
  ((seq++))
else
  suff=front
  seq3=$(printf "%03d" $seq)
fi
mv $i MM_${lang}_${seq3}_${suff}.jpg
((cnt++))
done

