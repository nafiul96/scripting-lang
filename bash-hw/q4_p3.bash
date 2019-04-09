echo -n "Enter your sentence: "
read sentence
echo "$sentence" | tr -cd 'k' | wc -c

