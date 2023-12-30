walls=$(find ${1} -type f )
count=0
for wall in $walls 
do
    if [ $((count % 3)) -eq 0 ] && [ $count -gt 0 ]; then
        echo -n "|"
        echo ""
    fi
    basename=$(basename "$wall" | cut -f1 -d'.')
    capitalized_basename="${basename^}"
    echo -n "|![$wall]($wall)|$capitalized_basename"
    ((count++))
done

