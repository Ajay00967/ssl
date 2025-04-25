# declare -A dates

# for file in *.jpg; do
#     date=$(echo "$file" | grep -oE '[0-9]{8}')
#     if [[ -n "$date" ]]; then
#         dates["${file%.jpg}"]="$date"
#     fi
# done

# for file in "${!dates[@]}"; do
#     echo "$file --> ${dates[$file]}"
# done

today=$(date +"%d%m%Y")

mkdir -p output

for file in *.jpg
do
    name1=$(echo "$file" | grep -oE '[0-9]{8}\.jpg$')
    name="${name1%.jpg}"
    date="${name:-8}"
    d=$((today-date))

    if (( d < 0 )); then
        continue
    fi

    if (( d==0 )); then
        ans=""$name"_today"
    elif (( d <= 7 )); then
        ans=""$name"_weekold"
    else 
        ans=""$name"_quiteold"
    fi

    # cp $file ./output
    # mv ./output/"$file" ./output/""$ans".jpg"
    cp "$file" "output/""$ans".jpg""

done

# cd output

# today=$(date +"%d%m%Y")
# echo $today