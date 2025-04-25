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
    printf "%s;", $1
    check = 1
    for(i=2; i<=NF; i++) {
        printf "%s;", $i
        pattern = "^[A-Za-z0-9_]+\\" ext[i] "$"
        if( $i !~ pattern ) check = 0
    }
    comment = ( check ? "Correct Submission Format" : "Wrong Submission Format" )
    printf "%s\n", comment
}