if [[ $# -eq 0 ]]; then
    exit 1
fi

arr=("$@")
n=${#arr[@]}
swap=0

for((i=0; i<n; i++)); do
    for((j=0; j<n-i-1; j++)); do
        if (( arr[j] > arr[j+1] )); then
            temp=${arr[j]}
            arr[j]=${arr[j+1]}
            arr[j+1]=$temp
            ((swap++))
        fi
    done
done

echo "${arr[@]}"
echo $swap