#! /bin/bash


mkdir -p output
touch Attack26112008.jpg Time24112008.txt 30122007.jpg Weird19112008.jpg century15082047.jpg financialcrisis15092008.jpg
cp *.jpg output
rm -r Attack26112008.jpg Time24112008.txt 30122007.jpg Weird19112008.jpg century15082047.jpg financialcrisis15092008.jpg
cd output

for file in $(ls); do
    mod_file=$(echo $file | grep -oE '^[^\.]+')
    date=$(echo $file | grep -oE '[0-9]{8}')
    dd=$(echo $date | cut -c1-2)
    # if (( $(echo $date | cut -c1) == 0 )); then
    #     dd=$(echo $date | cut -c2)
    # fi
    # mm=$(echo $date | cut -c3-4)
    # if (( $(echo $date | cut -c3) == 0 )); then
    #     mm=$(echo $date | cut -c4)
    # fi
    yyyy=$(echo $date | cut -c5-8)
    # echo $dd $mm $yyyy
    if (( yyyy > 2008 )); then
        rm $file
        continue
    fi
    if (( yyyy < 2008 )); then
        mv $file ${mod_file}_quiteold.jpg
        continue
    fi
    if (( mm < 11 )); then
        mv $file ${mod_file}_quiteold.jpg
        continue
    fi
    if (( mm > 11 )); then
        rm $file
        continue
    fi
    if (( dd < 19 )); then
        mv $file ${mod_file}_quiteold.jpg
        continue
    fi
    if (( dd < 26 )); then
        mv $file ${mod_file}_weekold.jpg
        continue
    fi
    if (( dd > 26 )); then
        rm $file
        continue
    fi
    if (( dd == 26 )); then
        mv $file ${mod_file}_today.jpg
        continue
    fi
done