if [[ $# -lt 2 ]]; then
    exit 1
fi

a="$1"
shift

for ele in "$@"; do
    if [[ "$ele" == "$a" ]]; then
        echo "YES"
        exit 0
    fi
done

echo "NO"

