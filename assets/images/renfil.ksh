if [ $# -ne 2 ]
then
echo "Wrong Usage : "bash $0 [country ISO2] [next seq nr]
echo "Example     : "bash $0 RU 8
echo ABORT
exit 2
fi

dir=$1
seq=$2
cnt=1

for i in `ls $dir/IMG*`
do
if [ `expr $cnt % 2` -eq 0 ]
then 
  suff=back
  ((seq++))
else
  suff=front
  seq3=$(printf "%03d" $seq)
fi
mv $i ${dir}/MM_${dir}_${seq3}_${suff}.jpg
((cnt++))
done

