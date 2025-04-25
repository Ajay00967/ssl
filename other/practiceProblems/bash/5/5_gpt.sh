#!/bin/bash

today=$(date +"%d%m%Y")
today_epoch=$(date -d "${today:0:2}-${today:2:2}-${today:4:4}" +%s)

mkdir -p output

for file in *.jpg; do
    # Extract date from filename
    date_part=$(echo "$file" | grep -oE '[0-9]{8}')
    [[ -z "$date_part" ]] && continue

    # Convert file date to epoch
    file_epoch=$(date -d "${date_part:0:2}-${date_part:2:2}-${date_part:4:4}" +%s 2>/dev/null)
    [[ $? -ne 0 ]] && continue  # skip invalid dates

    # Skip if file date is in the future
    if (( file_epoch > today_epoch )); then
        continue
    fi

    # Calculate difference in days
    diff_days=$(( (today_epoch - file_epoch) / 86400 ))

    # Decide label
    if (( diff_days == 0 )); then
        label="today"
    elif (( diff_days <= 7 )); then
        label="weekold"
    else
        label="quiteold"
    fi

    # Form new name (preserve original name)
    name="${file%.jpg}"
    newname="${name} ${label}.jpg"

    # Copy to output with new name
    cp "$file" "output/$newname"
done
