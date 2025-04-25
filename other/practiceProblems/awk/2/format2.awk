BEGIN {
    FS=" "
    OFS=";"
}
NR == 1 {
    for(i=1; i<=NF; i++) {
        printf "%s;", $i
    }
    printf "Comments\n"
}
NR == 2 {
    for(i=1; i<=NF; i++) {
        printf "%s;", $i
        if(i>1) {
            ext[i] = $i
        }
    }
    printf "-\n"
}
NR >= 3 {
    # for(i in ext) {
    #     printf "%d : %s\n", i, ext[i]
    # }
    for(i=2; i<=NF; i++) {
        printf "%s;", $i
        check = 1

        split($i, arr, ".")
        count = 0
        for(i in arr) count++
        if( count != 2 ) check = 0
        if( arr[1] == "" ) check = 0
        if( arr[2] != ext[i] ) check = 0
        
        # if( $i !~ "^[A-Za-z0-9_]+ext[i]$" ) check = 0
    }
    comment = ( check ? "Correct Submission Format" : "Wrong Submission Format" )
    printf "%s\n", comment
}
