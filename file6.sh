#!/bin/bash
echo "enter number : "
read num
echo "multiple table of $num"
for i in {0..9};
do
	echo "$num * $i = $((num * i))"
done
