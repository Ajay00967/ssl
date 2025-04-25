function catalan() {
    n="$1"
    if [[ "$n" -eq 0 || "$n" -eq 1 ]]; then
        echo 1
        return
    fi

    local sum=0

    for((i=0; i<n; i++)); do
        local a=$(catalan "$i")
        local b=$(catalan $((n-i-1)))
        ((sum += a*b))
    done

    echo "$sum"
}

a=$(catalan "$1")
echo "$a"