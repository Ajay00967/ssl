BEGIN{
    FS=","
    OFS="@"
}
{
    print
    $1 = $1
    print
}