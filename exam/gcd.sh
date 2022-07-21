#!/bin/bash
lcm=0
gcd=0
echo "enter two numbers"
read a b
if [ $a -gt $b ]
then 
m=$a
else
m=$b
fi
for((i=1;i<=$m;i++))
do
x=`expr $a % $i `
y=`expr $b % $i `
if [ $x -eq 0 -a $y -eq 0 ]
then
gcd=$i
fi
done
echo  gcd=$gcd

for((i=1;i<=$m;i++))
do
p=`expr $i % $a `
q=`expr $i % $b `
if [ $p -eq 0 -a $q -eq 0 ]
then
lcm=$i
break
fi
done
if [ $lcm -eq 0 ]
then
	lcm=`expr $a \* $b`
fi
echo  lcm=$lcm

