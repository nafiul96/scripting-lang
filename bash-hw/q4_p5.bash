if (($# > 0));then
min=$1
max=$1
median=$1

p=0
q=0
if($# ==1)
then
    p=1
    q=1
else
    p=$#/2
    q=$p
     if(($#%2 == 0));then
        q=$p+1
    fi
fi

if((p == q));then
    median=$(p)
else
    median=($(p) + $(q))/2
fi



else
echo "invalid argument count"
fi

echo "The min is $min"
echo "The max is $max"
echo "The median is $median"
