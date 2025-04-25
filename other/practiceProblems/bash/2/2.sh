file="$1"

declare -A freq

while read -r line; do
    for word in $line; do
        (( freq["$word"]++ ))
    done
done < "$file"

for ele in "${!freq[@]}"; do
    echo "$ele: ${freq[$ele]}"
done
