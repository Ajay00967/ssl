BEGIN{
    FS=","
    OFS="\t"
}
NR==1{
    for(i=1; i<=NF; i++) {
        printf "%s\t", $i
    }
    print "Average"
}
NR>1{
    printf "%s\t", $1;
    sum = 0
    count = 0
    for(i=2; i<=NF; i++) {
        printf "%s\t", $i
        sum += $i
        count++
    }
    avg = sum / count
    printf "%.2f\n", avg
}